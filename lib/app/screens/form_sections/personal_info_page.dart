import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vollect/core/enums.dart';

class PersonalInfoPage extends StatefulWidget {
  const PersonalInfoPage({super.key, required this.report});

  final Map<String, dynamic> report;

  @override
  State<PersonalInfoPage> createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends State<PersonalInfoPage>
    with AutomaticKeepAliveClientMixin {
  Gender _gender = Gender.male;
  SocialStatus _socialStatus = SocialStatus.single;
  MedicalStatus _medicalStatus = MedicalStatus.healthy;
  DisabilityStatus _disabilityStatus = DisabilityStatus.healthy;

  final Set<AidType> selectedAid = {};

  static const _gap = 10.0;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: _gap),
      child: Column(
        children: [
          // AidSelectionWidget(
          //     selectedItems: selectedAid,
          //     onTapOption: (aid, select) => setState(() {
          //           select ? selectedAid.add(aid) : selectedAid.remove(aid);
          //         })),
          const SizedBox(height: _gap * 2),
          // -----------------------------------

          //  F I R S T N A M E   F I E L D

          // -----------------------------------
          TextFormField(
            canRequestFocus: true,
            controller: null,
            initialValue: widget.report['firstName'],
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              label: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'الاسم',
                      style: Theme.of(context)
                          .inputDecorationTheme
                          .floatingLabelStyle,
                    ),
                    const TextSpan(
                      text: ' *',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
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
            controller: null,
            initialValue: widget.report['fatherName'],
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              label: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "الاب",
                      style: Theme.of(context)
                          .inputDecorationTheme
                          .floatingLabelStyle,
                    ),
                    const TextSpan(
                      text: ' *',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
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
            decoration: InputDecoration(
              label: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'الكنية',
                      style: Theme.of(context)
                          .inputDecorationTheme
                          .floatingLabelStyle,
                    ),
                    const TextSpan(
                      text: ' *',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
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
            validator: (value) =>
                (value == null || value.isEmpty) ? "هذا الحقل مطلوب!" : null,
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
            decoration: InputDecoration(
              label: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "رقم التواصل",
                      style: Theme.of(context)
                          .inputDecorationTheme
                          .floatingLabelStyle,
                    ),
                    const TextSpan(
                      text: ' *',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
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
                  onSaved: (newValue) =>
                      widget.report.addAll({"gender": newValue?.name}),
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
                  onSaved: (newValue) =>
                      widget.report.addAll({"socialStatus": newValue?.name}),
                ),
              ),
            ],
          ),
          const SizedBox(height: _gap),

          // -----------------------------------

          //  B I R T H   D A T E

          // -----------------------------------
          InputDatePickerFormField(
            firstDate: DateTime(1900),
            lastDate: DateTime.now(),
            initialDate: DateTime.now(),
            keyboardType: TextInputType.datetime,
            acceptEmptyDate: true,
            fieldLabelText: "تاريخ الميلاد",
            onDateSaved: (value) => widget.report.addAll({"birthDate": value}),
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
            onSaved: (newValue) =>
                widget.report.addAll({"medicalStatus": newValue?.name}),
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
            onSaved: (newValue) =>
                widget.report.addAll({"disabilityStatus": newValue?.name}),
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
                  textInputAction: TextInputAction.next,
                  maxLength: 10,
                  decoration: const InputDecoration(
                    label: Text("رقم التواصل"),
                  ),
                  onSaved: (newValue) =>
                      widget.report.addAll({"partnerPhoneNum": newValue}),
                ),
                const SizedBox(height: _gap),
                InputDatePickerFormField(
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now(),
                  initialDate: DateTime.now(),
                  keyboardType: TextInputType.datetime,
                  acceptEmptyDate: true,
                  fieldLabelText: "تاريخ الميلاد",
                  onDateSaved: (value) =>
                      widget.report.addAll({"partnerBirthDate": value}),
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
