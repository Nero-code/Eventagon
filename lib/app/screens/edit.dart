import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vollect/app/classes/beneficiary.dart';
import 'package:vollect/app/data/database.dart';
import 'package:vollect/app/data/database_extensions.dart';
import 'package:vollect/di.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key, required this.beneficiary});

  final Beneficiary? beneficiary;

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  final _formKey = GlobalKey<FormState>();
  final _dropDownSearchKey1 = GlobalKey<DropdownSearchState>();
  final _dropDownSearchKey2 = GlobalKey<DropdownSearchState>();

  final firstNode = FocusScopeNode();
  final ddfn1 = FocusScopeNode();
  final ddfn2 = FocusScopeNode();

  final _gap = 10.0;
  final options = ['ملك', 'اجار', 'عند قريب', 'مركز ايواء'];

  Map<String, dynamic> report = {};

  bool isLoading = false;

  //  State-Preserving variables for rapid input.
  SocialStatus _status = SocialStatus.single;
  String? mainResidence, currentResidence, residenceType;

  @override
  void initState() {
    super.initState();

    if (widget.beneficiary != null) {
      report.addAll(widget.beneficiary!.toJson());
      _status = widget.beneficiary!.socialStatus;
      mainResidence = widget.beneficiary!.mainResidence;
      currentResidence = widget.beneficiary!.currentResidence;
      residenceType = widget.beneficiary!.residenceType;
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
  void dispose() {
    super.dispose();
    ddfn1.dispose();
    ddfn2.dispose();
    firstNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.beneficiary == null ? "إضافة" : "تعديل"),
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
          SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 50),

                    // -----------------------------------

                    //  F I R S T N A M E   F I E L D

                    // -----------------------------------
                    TextFormField(
                      canRequestFocus: true,
                      controller: null,
                      initialValue: report['firstName'],
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text("الاسم"),
                        hintText: "",
                      ),
                      validator: (value) => (value == null || value.isEmpty)
                          ? "هذا الحقل مطلوب!"
                          : null,
                      onSaved: (newValue) =>
                          report.addAll({"firstName": newValue!}),
                    ),
                    SizedBox(height: _gap),

                    // -----------------------------------

                    //  F A T H E R N A M E   F I E L D

                    // -----------------------------------
                    TextFormField(
                      controller: null,
                      initialValue: report['fatherName'],
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text("الاب"),
                        hintText: "",
                      ),
                      validator: (value) => (value == null || value.isEmpty)
                          ? "هذا الحقل مطلوب!"
                          : null,
                      onSaved: (newValue) =>
                          report.addAll({"fatherName": newValue!}),
                    ),
                    SizedBox(height: _gap),

                    // -----------------------------------

                    //  L A S T N A M E   F I E L D

                    // -----------------------------------
                    TextFormField(
                      controller: null,
                      initialValue: report['lastName'],
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text("الكنية"),
                        hintText: "",
                      ),
                      validator: (value) => (value == null || value.isEmpty)
                          ? "هذا الحقل مطلوب!"
                          : null,
                      onSaved: (newValue) =>
                          report.addAll({"lastName": newValue!}),
                    ),
                    SizedBox(height: _gap),
                    TextFormField(
                      controller: null,
                      initialValue: report['nationalNumber'],
                      textInputAction: TextInputAction.next,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.phone,
                      maxLength: 11,
                      decoration: const InputDecoration(
                        label: Text("الرقم الوطني"),
                      ),
                      onSaved: (newValue) =>
                          report.addAll({"nationalNumber": newValue}),
                    ),
                    SizedBox(height: _gap),
                    TextFormField(
                      controller: null,
                      initialValue: report['familybookNumber'],
                      textInputAction: TextInputAction.next,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        label: Text("رقم دفتر العائلة"),
                        hintText: "",
                      ),
                      onSaved: (newValue) =>
                          report.addAll({"familybookNumber": newValue}),
                    ),

                    SizedBox(height: _gap),
                    TextFormField(
                      controller: null,
                      initialValue: report['contactNumber'],
                      textInputAction: TextInputAction.next,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.phone,
                      maxLength: 10,
                      decoration: const InputDecoration(
                        label: Text("رقم التواصل"),
                      ),
                      validator: (value) => (value == null || value.isEmpty)
                          ? "هذا الحقل مطلوب!"
                          : null,
                      onSaved: (newValue) =>
                          report.addAll({"contactNumber": newValue}),
                    ),

                    SizedBox(height: _gap),
                    // --------------------------

                    //  S O C I A L   S T A T U S

                    // --------------------------
                    DropdownButtonFormField<SocialStatus>(
                      value: _status,
                      items: const [
                        DropdownMenuItem(
                            value: SocialStatus.single, child: Text("عازب/ة")),
                        DropdownMenuItem(
                            value: SocialStatus.married,
                            child: Text("متزوج/ة")),
                        DropdownMenuItem(
                            value: SocialStatus.divorced,
                            child: Text("مطلق/ة")),
                        DropdownMenuItem(
                            value: SocialStatus.widowed, child: Text("ارمل/ة")),
                      ],
                      onChanged: (value) =>
                          setState(() => _status = value ?? _status),
                      onSaved: (newValue) =>
                          report.addAll({"socialStatus": newValue?.name}),
                    ),

                    Visibility(
                      visible: _status == SocialStatus.married,
                      child: Column(
                        children: [
                          SizedBox(height: _gap),
                          TextFormField(
                            controller: null,
                            initialValue: report['partnerName'],
                            textInputAction: TextInputAction.next,
                            decoration: const InputDecoration(
                              label: Text("اسم الزوج/ة"),
                              hintText: "",
                            ),
                            onSaved: (newValue) =>
                                report.addAll({"partnerName": newValue}),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: _gap),
                    TextFormField(
                      controller: null,
                      initialValue: "${report['familyMembersNumber'] ?? ''}",
                      textInputAction: TextInputAction.next,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        label: Text("عدد افراد الاسرة"),
                        hintText: "",
                      ),
                      onSaved: (newValue) =>
                          report.addAll({"familyMembersNumber": newValue}),
                    ),

                    SizedBox(height: _gap * 3),

                    //  V I L L A G E S
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              FocusScope(
                                node: ddfn1,
                                child: DropdownSearch<String>(
                                  key: _dropDownSearchKey1,
                                  suffixProps: const DropdownSuffixProps(
                                      clearButtonProps: ClearButtonProps()),
                                  decoratorProps: const DropDownDecoratorProps(
                                    decoration: InputDecoration(
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.always,
                                      label: Text("مكان الاقامة الاصلي"),
                                    ),
                                  ),
                                  selectedItem: mainResidence,
                                  items: (s, l) => ServiceLocator.villages
                                      .map((v) => v.name)
                                      .toList(),
                                  popupProps: const PopupProps.menu(
                                    title: Text("مكان الاقامة الاصلي"),
                                    searchDelay: Duration.zero,
                                    showSearchBox: true,
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      mainResidence = value;
                                    });
                                    ddfn1.requestFocus();
                                  },
                                  onSaved: (newValue) => report
                                      .addAll({"mainResidence": newValue}),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: _gap),
                        Expanded(
                          child: Column(
                            children: [
                              FocusScope(
                                node: ddfn2,
                                child: DropdownSearch<String>(
                                  key: _dropDownSearchKey2,
                                  decoratorProps: const DropDownDecoratorProps(
                                    decoration: InputDecoration(
                                      floatingLabelBehavior:
                                          FloatingLabelBehavior.always,
                                      label: Text("مكان الاقامة الحالي"),
                                    ),
                                  ),
                                  selectedItem: currentResidence,
                                  items: (s, l) => ServiceLocator.villages
                                      .map((v) => v.name)
                                      .toList(),
                                  popupProps: const PopupProps.menu(
                                    title: Center(
                                        child: Text("مكان الاقامة الحالي")),
                                    searchDelay: Duration.zero,
                                    showSearchBox: true,
                                  ),
                                  onChanged: (value) {
                                    setState(() {
                                      currentResidence = value;
                                    });
                                    ddfn2.requestFocus();
                                  },
                                  onSaved: (newValue) => report
                                      .addAll({"currentResidence": newValue}),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: _gap),
                    DropdownButtonFormField(
                      decoration:
                          const InputDecoration(label: Text("نوع السكن")),
                      value: residenceType,
                      items: options
                          .map(
                            (option) => DropdownMenuItem(
                              value: option,
                              child: Text(option),
                            ),
                          )
                          .toList(),
                      onChanged: (value) =>
                          setState(() => residenceType = value),
                      onSaved: (newValue) =>
                          report.addAll({'residenceType': residenceType}),
                    ),

                    Visibility(
                      // visible: [options[2], options[3]].contains(residenceType),
                      visible: residenceType != options[0], // not owned
                      child: Column(
                        children: [
                          SizedBox(height: _gap * 3),
                          TextFormField(
                            controller: null,
                            initialValue: report['residenceStatus'],
                            textInputAction: TextInputAction.next,
                            decoration: const InputDecoration(
                              label: Text("حالة السكن الاصلي"),
                              hintText: "",
                            ),
                            onSaved: (newValue) =>
                                report.addAll({"residenceStatus": newValue}),
                          ),
                        ],
                      ),
                    ),
                    Visibility(
                      visible: residenceType == options[3], // lives in shelter
                      child: Column(
                        children: [
                          SizedBox(height: _gap),
                          TextFormField(
                            controller: null,
                            initialValue: report['shelterName'],
                            textInputAction: TextInputAction.next,
                            decoration: const InputDecoration(
                              label: Text("اسم مركز الايواء"),
                              hintText: "",
                            ),
                            onSaved: (newValue) =>
                                report.addAll({"shelterName": newValue}),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: _gap),
                    TextFormField(
                      controller: null,
                      initialValue: report['medicalStatus'],
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        label: Text("الوضع الصحي (ان وجد)"),
                        hintText: "",
                      ),
                      onSaved: (newValue) =>
                          report.addAll({"medicalStatus": newValue}),
                    ),
                    SizedBox(height: _gap),
                    TextFormField(
                      controller: null,
                      initialValue: report['notes'],
                      textInputAction: TextInputAction.newline,
                      textAlignVertical: TextAlignVertical.top,
                      maxLines: 5,
                      decoration: const InputDecoration(
                        alignLabelWithHint: true,
                        label: Text("ملاحظات اضافية..."),
                      ),
                      onSaved: (newValue) => report.addAll({"notes": newValue}),
                    ),

                    const SizedBox(height: 150),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
