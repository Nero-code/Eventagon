import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vollect/app/data/database.dart';
import 'package:vollect/app/data/database_extensions.dart';
import 'package:vollect/app/repos/benefitters_repository.dart';
import 'package:vollect/app/screens/edit.dart';
import 'package:vollect/app/widgets/confirmation_dialog.dart';
import 'package:vollect/app/widgets/version_bottom_sheet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.repository});

  final BenefittersRepository repository;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Beneficiary> reports = []; // Full list from DB
  List<Beneficiary> filteredReports = [];
  List<Beneficiary> selectedReports = [];
  bool selectionMode = false;
  bool searchMode = false;
  String searchQuery = '';

  bool isLoading = false;

  Future<List<Beneficiary>>? _future;

  static const _gap = 10.0;

  @override
  void initState() {
    super.initState();
    _future = widget.repository.getAllBenefitters();
  }

  void refresh() {
    reports.clear();
    filteredReports.clear();
    setState(() {
      _future = null;
      _future = widget.repository.getAllBenefitters();
    });
  }

  void updateSearch(String query) {
    bool test(Beneficiary r) {
      return r.fullName.toLowerCase().contains(query.toLowerCase()) ||
          (r.nationalNumber != null
              ? r.nationalNumber!.contains(query.toLowerCase())
              : false);
    }

    setState(() {
      searchQuery = query;
      filteredReports = reports.where(test).toList();
    });
  }

  void clearSearch() {
    setState(() {
      searchMode = false;
      searchQuery = '';
      filteredReports = reports;
    });
  }

  void toggleSelection(Beneficiary item) {
    setState(() {
      if (selectedReports.contains(item)) {
        selectedReports.remove(item);
      } else {
        selectedReports.add(item);
      }
      selectionMode = selectedReports.isNotEmpty;
    });
  }

  void clearSelection() {
    setState(() {
      selectedReports.clear();
      selectionMode = false;
    });
  }

  void deleteSelected() async {
    final res = await showActionConfirmationDialog(
      context: context,
      type: ConfirmationType.delete,
    );
    // !(res ?? false)  ==>  res == null || !res
    if (!(res ?? false)) return;
    for (var i in selectedReports) {
      await widget.repository.deleteBenefitter(i.toCompanion(true));
      reports.remove(i);
    }
    filteredReports = reports;

    clearSelection();
    refresh();
  }

  void selectAll() {
    setState(() {
      selectedReports = List.from(reports);
      selectionMode = true;
    });
  }

  void exportExcelSheet() async {
    final result = await showActionConfirmationDialog(
      context: context,
      type: ConfirmationType.export,
    );
    // !(res ?? false)  ==>  res == null || !res
    if (!(result ?? false)) return;
    toggleLoadingState(true);
    final res = await widget.repository.exportToExcel();
    toggleLoadingState(false);
    switch (res) {
      case -1:
        showSnackBar("فشلت العملية!", Colors.red);
        break;
      case 0:
        showSnackBar("لا يوجد عناصر");
        break;
      default:
        showSnackBar("تمت العملية على $res عنصر", Colors.green);
    }
  }

  void importExcelSheet() async {
    final result = await showActionConfirmationDialog(
      context: context,
      type: ConfirmationType.import,
    );
    // !(res ?? false)  ==>  res == null || !res
    if (!(result ?? false)) return;
    setState(() {
      isLoading = true;
    });
    toggleLoadingState(true);
    final res = await widget.repository.importFromExcel();
    toggleLoadingState(false);
    switch (res) {
      case -1:
        showSnackBar("فشلت العملية!", Colors.red);
        break;
      case 0:
        showSnackBar("لا يوجد عناصر");
        break;
      default:
        showSnackBar("تمت العملية على $res عنصر", Colors.green);
    }
    refresh();
  }

  // Helper Function
  void showSnackBar(String content, [Color? background]) {
    ScaffoldMessenger.of(context)
      ..clearSnackBars()
      ..showSnackBar(SnackBar(
        content: Text(content),
        backgroundColor: background,
      ));
  }

  void toggleLoadingState(bool loading) {
    WidgetsBinding.instance
        .addPostFrameCallback((_) => setState(() => isLoading = loading));
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        if (didPop) return;
        if (searchMode) {
          clearSearch();
        } else if (selectionMode) {
          clearSelection();
        } else {
          SystemNavigator.pop();
        }
      },
      child: Stack(
        children: [
          Scaffold(
            bottomSheet: const VersionBottomSheet(),
            floatingActionButton: FloatingActionButton(
              onPressed: () async {
                await Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const EditScreen(beneficiary: null),
                    ));
                refresh();
              },
              child: const Icon(Icons.add),
            ),
            appBar: AppBar(
              leading: selectionMode
                  ? IconButton(
                      onPressed: clearSelection,
                      icon: const Icon(Icons.arrow_back))
                  : null,
              title: searchMode
                  ? TextFormField(
                      autofocus: true,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 0.0, horizontal: 8.0),
                        hintText: 'ابحث...',
                        // prefixIcon: Icon(Icons.search),
                        // suffixIcon: Icon(Icons.search),
                      ),
                      onChanged: updateSearch,
                    )
                  : Text(
                      selectionMode ? "${selectedReports.length}" : "الرئيسية"),
              actions: [
                IconButton(
                  icon: Icon(searchMode ? Icons.close : Icons.search),
                  onPressed: () {
                    setState(() {
                      searchMode = !searchMode;
                      if (!searchMode) clearSearch();
                    });
                  },
                ),
                if (selectionMode) ...[
                  IconButton(
                    icon: const Icon(Icons.select_all),
                    tooltip: "تحديد الكل",
                    onPressed: selectAll,
                  ),
                  IconButton(
                    icon: const Icon(Icons.delete),
                    tooltip: "حذف",
                    onPressed: deleteSelected,
                  ),
                ],
                PopupMenuButton(
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      // onTap: () {
                      //   widget.repository.exportToExcel();
                      // },
                      onTap: exportExcelSheet,
                      child: const Row(
                        children: [
                          Icon(Icons.keyboard_double_arrow_up_rounded),
                          SizedBox(width: _gap),
                          Text('اخراج'),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      // onTap: () {
                      //   widget.repository.importFromExcel();
                      // },
                      onTap: importExcelSheet,
                      child: const Row(
                        children: [
                          Icon(Icons.keyboard_double_arrow_down_rounded),
                          SizedBox(width: _gap),
                          Text('ادخال'),
                        ],
                      ),
                    ),
                    // PopupMenuItem(
                    //   onTap: () {},
                    //   child: Row(
                    //     children: [
                    //       Icon(Icons.person),
                    //       SizedBox(width: _gap),
                    //       Text('الحساب'),
                    //     ],
                    //   ),
                    // ),
                  ],
                )
              ],
            ),
            body: RefreshIndicator(
              onRefresh: () async => refresh(),
              child: FutureBuilder(
                  future: _future,
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      if (kDebugMode) {
                        print(snapshot.connectionState);
                        print(snapshot.hasError);
                        print(snapshot.hasData);
                        print(snapshot.data?.length);
                      }
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.connectionState ==
                        ConnectionState.done) {
                      if (kDebugMode) {
                        print(snapshot.connectionState);
                        print(snapshot.hasError);
                        print(snapshot.hasData);
                        print(snapshot.data?.length);
                      }
                      if (snapshot.hasError) {
                        if (kDebugMode) {
                          print('error');
                        }
                        return const Center(child: Text("حدث خطأ!"));
                      } else if (snapshot.data!.isEmpty) {
                        if (kDebugMode) {
                          print('empty');
                        }
                        return const Center(child: Text("لا يوجد عناصر!"));
                      }
                    }
                    if (reports.length != snapshot.data!.length) {
                      reports = snapshot.data!;
                      filteredReports = reports;
                    }

                    return ListView.separated(
                      itemCount: filteredReports.length,
                      separatorBuilder: (_, __) => const Divider(
                        height: 2,
                        thickness: 0.5,
                        color: Colors.black12,
                        indent: 15.0,
                        endIndent: 15.0,
                      ),
                      padding: const EdgeInsets.only(bottom: 20.0),
                      itemBuilder: (context, index) {
                        final report = filteredReports[index];
                        final selected = selectedReports.contains(report);

                        return ListTile(
                          title: Text(report.fullName),
                          subtitle: Text(report.mainResidence ?? "غير معروف"),
                          selected: selected,
                          selectedTileColor:
                              const Color.fromARGB(255, 236, 236, 236),
                          onLongPress: () => toggleSelection(report),
                          trailing: selected ? const Icon(Icons.done) : null,
                          onTap: selectionMode
                              ? () => toggleSelection(report)
                              : () async {
                                  await Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            EditScreen(beneficiary: report)),
                                  );
                                  refresh();
                                },
                        );
                      },
                    );
                  }),
            ),
          ),
          if (isLoading)
            const Material(
              color: Colors.black12,
              child: Center(
                child: Card(
                  child: SizedBox(
                    width: 70,
                    height: 70,
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: CircularProgressIndicator(),
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
