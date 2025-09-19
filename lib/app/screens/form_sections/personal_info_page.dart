import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:vollect/app/widgets/aid_selection_form_field.dart';
import 'package:vollect/core/enums.dart';

class PersonalInfoPage extends StatefulWidget {
  const PersonalInfoPage({super.key, required this.report});

  final Map<String, dynamic> report; // Json beneficiary from Database

  @override
  State<PersonalInfoPage> createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage>
    with AutomaticKeepAliveClientMixin {
  late Gender _gender;
  late SocialStatus _socialStatus;
  late MedicalStatus _medicalStatus;
  late DisabilityStatus _disabilityStatus;

  final Set<AidType> selectedAid = {};

  static const _gap = 10.0;

  @override
  void initState() {
    super.initState();

    print(widget.report);

    _gender = widget.report.containsKey('gender')
        ? Gender.values.firstWhere((v) => v.name == widget.report['gender'])
        : Gender.male;
    _socialStatus = widget.report.containsKey('socialStatus')
        ? SocialStatus.values
            .firstWhere((v) => v.name == widget.report['socialStatus'])
        : SocialStatus.single;
    _medicalStatus = widget.report.containsKey('medicalStatus')
        ? MedicalStatus.values
            .firstWhere((v) => v.name == widget.report['medicalStatus'])
        : MedicalStatus.healthy;
    _disabilityStatus = widget.report.containsKey('disabilityStatus')
        ? DisabilityStatus.values
            .firstWhere((v) => v.name == widget.report['disabilityStatus'])
        : DisabilityStatus.healthy;

    if (widget.report.containsKey('aidRequired')) {
      final aid = (widget.report['aidRequired'] as String).split(',');
      if (aid.isNotEmpty) {
        selectedAid.addAll(AidType.values
            .where((a) => aid.contains(a.code.toString()))
            .toSet());
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: _gap),
      child: Column(
        children: [
          AidSelectionFormField(
            title: 'اختر نوع الاغاثة',
            initialValue: selectedAid,
            onSaved: (newValue) {
              print(newValue
                  ?.map<String>((aid) => aid.code.toString())
                  .join(','));
              widget.report.addAll({
                "aidRequired_codes": newValue
                    ?.map<String>((aid) => aid.code.toString())
                    .join(','),
              });
            },
          ),
          const SizedBox(height: _gap * 2),
          // -----------------------------------

          //  F I R S T N A M E   F I E L D

          // -----------------------------------
          TextFormField(
            initialValue: widget.report['firstName'],
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              label: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('الاسم'),
                  Text(' *', style: TextStyle(color: Colors.red, fontSize: 16))
                ],
              ),
            ),
            validator: (value) =>
                (value == null || value.isEmpty) ? "هذا الحقل مطلوب!" : null,
            onSaved: (newValue) =>
                widget.report.addAll({"firstName": newValue!}),
          ),
          const SizedBox(height: _gap),

          // -----------------------------------

          //  F A T H E R N A M E   F I E L D

          // -----------------------------------
          TextFormField(
            initialValue: widget.report['fatherName'],
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              label: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('الاب'),
                  Text(' *', style: TextStyle(color: Colors.red, fontSize: 16))
                ],
              ),
            ),
            validator: (value) =>
                (value == null || value.isEmpty) ? "هذا الحقل مطلوب!" : null,
            onSaved: (newValue) =>
                widget.report.addAll({"fatherName": newValue!}),
          ),
          const SizedBox(height: _gap),

          // -----------------------------------

          //  L A S T N A M E   F I E L D

          // -----------------------------------
          TextFormField(
            controller: null,
            initialValue: widget.report['lastName'],
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              label: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('الكنية'),
                  Text(' *', style: TextStyle(color: Colors.red, fontSize: 16))
                ],
              ),
            ),
            validator: (value) =>
                (value == null || value.isEmpty) ? "هذا الحقل مطلوب!" : null,
            onSaved: (newValue) =>
                widget.report.addAll({"lastName": newValue!}),
          ),
          const SizedBox(height: _gap),

          // -----------------------------------

          //  M O T  H E R   N A M E   F I E L D

          // -----------------------------------
          TextFormField(
            controller: null,
            initialValue: widget.report['motherName'],
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              label: Text("اسم الام"),
              hintText: "",
            ),
            onSaved: (newValue) =>
                widget.report.addAll({"motherName": newValue!}),
          ),
          const SizedBox(height: _gap),

          // -----------------------------------

          //  N A T I O N A L   N U M B E R   F I E L D

          // -----------------------------------
          TextFormField(
            controller: null,
            initialValue: widget.report['nationalNumber'],
            textInputAction: TextInputAction.next,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            keyboardType: TextInputType.phone,
            maxLength: 11,
            decoration: const InputDecoration(
              label: Text("الرقم الوطني"),
            ),
            onSaved: (newValue) =>
                widget.report.addAll({"nationalNumber": newValue}),
          ),
          const SizedBox(height: _gap),

          // -----------------------------------

          //  C O N T A C T   N U M B E R   F I E L D

          // -----------------------------------
          TextFormField(
            controller: null,
            initialValue: widget.report['contactNumber'],
            textInputAction: TextInputAction.next,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            keyboardType: TextInputType.phone,
            maxLength: 10,
            decoration: const InputDecoration(
              label: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text('رقم التواصل'),
                  Text(' *', style: TextStyle(color: Colors.red, fontSize: 16))
                ],
              ),
            ),
            validator: (value) =>
                (value == null || value.isEmpty) ? "هذا الحقل مطلوب!" : null,
            onSaved: (newValue) =>
                widget.report.addAll({"contactNumber": newValue}),
          ),
          const SizedBox(height: _gap),

          Row(
            children: [
              // -----------------------------------

              //  G E N D E R

              // -----------------------------------
              Expanded(
                child: DropdownButtonFormField<Gender>(
                  value: _gender,
                  items: Gender.values
                      .map((g) => DropdownMenuItem(
                            value: g,
                            child: Text(g.arName),
                          ))
                      .toList(),
                  decoration: const InputDecoration(
                    label: Text("الجنس"),
                  ),
                  onChanged: (value) =>
                      setState(() => _gender = value ?? _gender),
                  onSaved: (newValue) => widget.report.addAll({
                    "gender_code": newValue?.code,
                    // "gender": newValue?.arName, // USELESS
                  }),
                ),
              ),
              const SizedBox(width: _gap),

              // -----------------------------------

              //  S O C I A L   S T A T U S

              // -----------------------------------
              Expanded(
                child: DropdownButtonFormField<SocialStatus>(
                  value: _socialStatus,
                  items: SocialStatus.values
                      .map((ss) => DropdownMenuItem(
                            value: ss,
                            child: Text(ss.arName),
                          ))
                      .toList(),
                  decoration: const InputDecoration(
                    label: Text("الوضع الاجتماعي"),
                  ),
                  onChanged: (value) =>
                      setState(() => _socialStatus = value ?? _socialStatus),
                  onSaved: (newValue) => widget.report.addAll({
                    "socialStatus_code": newValue?.code,
                    // "socialStatus": newValue?.arName, // USELESS
                  }),
                ),
              ),
            ],
          ),
          const SizedBox(height: _gap),

          // -----------------------------------

          //  B I R T H   D A T E

          // -----------------------------------
          Localizations.override(
            context: context,
            locale: const Locale('en', 'GB'),
            child: InputDatePickerFormField(
              firstDate: DateTime(1900),
              lastDate: DateTime.now(),
              initialDate: parse(widget.report['birthDate']) ?? DateTime.now(),
              keyboardType: TextInputType.datetime,
              acceptEmptyDate: true,
              fieldLabelText: "تاريخ الميلاد",
              onDateSaved: (value) {
                print('----------------------------------');
                print(value);
                print('----------------------------------');
                widget.report
                    .addAll({"birthDate": DateFormat.yMd().format(value)});
              },
            ),
          ),
          const SizedBox(height: _gap),

          // -----------------------------------

          //  M E D I C A L   S T A T U S

          // -----------------------------------
          DropdownButtonFormField<MedicalStatus>(
            value: _medicalStatus,
            items: MedicalStatus.values
                .map((ms) => DropdownMenuItem(
                      value: ms,
                      child: Text(ms.arName),
                    ))
                .toList(),
            decoration: const InputDecoration(
              label: Text("الوضع الصحي"),
            ),
            onChanged: (value) =>
                setState(() => _medicalStatus = value ?? _medicalStatus),
            onSaved: (newValue) => widget.report.addAll({
              "medicalStatus_code": newValue?.code,
              // "medicalStatus": newValue?.arName, // USELESS
            }),
          ),
          const SizedBox(height: _gap),
          //

          //  D I S A B I L I T Y   S T A T U S

          //
          DropdownButtonFormField<DisabilityStatus>(
            value: _disabilityStatus,
            items: DisabilityStatus.values
                .map((ds) => DropdownMenuItem(
                      value: ds,
                      child: Text(ds.arName),
                    ))
                .toList(),
            decoration: const InputDecoration(
              label: Text("الاعاقة"),
            ),
            onChanged: (value) =>
                setState(() => _disabilityStatus = value ?? _disabilityStatus),
            onSaved: (newValue) => widget.report.addAll({
              "disabilityStatus_code": newValue?.code,
              // "disabilityStatus": newValue?.arName, // USELESS
            }),
          ),

          // -----------------------------------

          //  P A R T N E R   I N F O

          // -----------------------------------
          Visibility(
            visible: _socialStatus != SocialStatus.single,
            child: Column(
              children: [
                const SizedBox(height: _gap * 3),
                TextFormField(
                  controller: null,
                  initialValue: widget.report['partnerName'],
                  textInputAction: TextInputAction.next,
                  decoration: const InputDecoration(
                    label: Text("اسم الزوج/ة"),
                    hintText: "",
                  ),
                  onSaved: (newValue) =>
                      widget.report.addAll({"partnerName": newValue}),
                ),
                const SizedBox(height: _gap),

                //
                //
                //
                TextFormField(
                  controller: null,
                  initialValue: widget.report['partnerNationalNum'],
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                  maxLength: 11,
                  decoration: const InputDecoration(
                    label: Text("الرقم الوطني له"),
                    hintText: "",
                  ),
                  onSaved: (newValue) =>
                      widget.report.addAll({"partnerNationalNum": newValue}),
                ),
                const SizedBox(height: _gap),

                //
                //
                //
                TextFormField(
                  controller: null,
                  initialValue: widget.report['partnerPhoneNum'],
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  keyboardType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                  maxLength: 10,
                  decoration: const InputDecoration(
                    label: Text("رقم التواصل"),
                  ),
                  onSaved: (newValue) =>
                      widget.report.addAll({"partnerPhoneNum": newValue}),
                ),
                const SizedBox(height: _gap),
                Localizations.override(
                  context: context,
                  locale: const Locale('en'),
                  child: InputDatePickerFormField(
                    firstDate: DateTime(1900),
                    lastDate: DateTime.now(),
                    initialDate: parse(widget.report['partnerBirthDate']),
                    keyboardType: TextInputType.datetime,
                    acceptEmptyDate: true,
                    fieldLabelText: "تاريخ الميلاد",
                    onDateSaved: (value) => widget.report.addAll(
                        {"partnerBirthDate": DateFormat.yMd().format(value)}),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}

DateTime? parse(dynamic source) {
  if (source is int) {
    return DateTime.fromMillisecondsSinceEpoch(source);
  } else if (source is String) {
    return DateFormat.yMd().tryParse(source);
  }
  return null;
}
