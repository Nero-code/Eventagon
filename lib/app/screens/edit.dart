import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:vollect/app/data/database.dart';
import 'package:vollect/app/data/database_extensions.dart';
import 'package:vollect/app/screens/form_sections/education_info_page.dart';
import 'package:vollect/app/screens/form_sections/family_info_page.dart';
import 'package:vollect/app/screens/form_sections/job_info_page.dart';
import 'package:vollect/app/screens/form_sections/notes_page.dart';
import 'package:vollect/app/screens/form_sections/personal_info_page.dart';
import 'package:vollect/app/screens/form_sections/residence_info_page.dart';
import 'package:vollect/di.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key, required this.beneficiary});

  final Beneficiary? beneficiary;

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  final _formKey = GlobalKey<FormState>();

  final Map<String, dynamic> report = {};

  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    if (widget.beneficiary != null) {
      report.addAll(widget.beneficiary!.toJson());
    }
  }

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

  void saveForm() async {
    //  This is a multi-step validation process.
    //
    //  First, we check the [Textfield]s values.
    if (_formKey.currentState!.validate()) {
      // DropdownSearch responds to `_formKey.save()`.
      _formKey.currentState!.save();
      if (kDebugMode) {
        print("-----------ReportJson-----------");
        print(report);
        print("--------------------------------");
      }

      if (widget.beneficiary == null) {
        // CREATE
        await ServiceLocator.repository.insertBenefitter(
            DatabaseCompanionExtension.insertFromJson(report));

        showSnackBar('تم ادخال ${report['firstName']} بنجاح', Colors.green);
        report.clear();
        _formKey.currentState!.reset();
        // FocusScope.of(context).requestFocus();
      } else {
        // UPDATE

        await ServiceLocator.repository.updateBenefitter(
            DatabaseCompanionExtension.updateFromJson(report));
        showSnackBar('تم حفظ ${report['firstName']} بنجاح', Colors.green);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.beneficiary == null ? "إضافة" : "تعديل"),
          bottom: TabBar(
              isScrollable: true,
              tabAlignment: TabAlignment.start,
              indicatorWeight: 1.0,
              labelPadding: const EdgeInsets.all(8.0),
              splashBorderRadius: BorderRadius.circular(5),
              tabs: [
                "المعلومات الشخصية",
                "معلومات العائلة",
                "معلومات السكن",
                "معلومات العمل",
                "معلومات الدراسة",
                "ملاحظات"
              ]
                  .map((text) => Text(text,
                      style: const TextStyle(fontWeight: FontWeight.bold)))
                  .toList()),
          actions: [
            TextButton.icon(
              label: const Text("حفظ"),
              icon: const Icon(Icons.done),
              onPressed: saveForm,
            ),
          ],
        ),
        body: Stack(
          children: [
            Form(
              key: _formKey,
              child: TabBarView(
                children: [
                  PersonalInfoPage(report: report),
                  FamilyInfoPage(report: report),
                  ResidenceInfoPage(report: report),
                  JobInfoPage(report: report),
                  EducationInfoPage(report: report),
                  NotesPage(report: report),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
