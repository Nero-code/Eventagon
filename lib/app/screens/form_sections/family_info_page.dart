import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FamilyInfoPage extends StatefulWidget {
  const FamilyInfoPage({super.key, required this.report});

  final Map<String, dynamic> report;

  @override
  State<FamilyInfoPage> createState() => _FamilyInfoPageState();
}

class _FamilyInfoPageState extends State<FamilyInfoPage>
    with AutomaticKeepAliveClientMixin {
  static const _gap = 10.0;

  final familyBookNumC = TextEditingController();
  String counterText = '0';

  bool familyHasMedicalStatus = false;
  bool familyHasDisability = false;

  @override
  void initState() {
    super.initState();

    familyHasMedicalStatus = widget.report['familyHasMedicalStatus'] ?? false;
    familyHasDisability = widget.report['familyHasDisability'] ?? false;
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30.0),
      child: Column(
        children: [
          // -----------------------------------

          //  F A M I L Y   B O O K   N U M   F I E L D

          // -----------------------------------
          TextFormField(
            initialValue: widget.report['familybookNumber'],
            textInputAction: TextInputAction.next,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              counterText: counterText,
              label: const Text("رقم دفتر العائلة"),
            ),
            onChanged: (value) =>
                setState(() => counterText = value.length.toString()),
            onSaved: (newValue) =>
                widget.report.addAll({"familybookNumber": newValue}),
          ),
          const SizedBox(height: _gap),

          // -----------------------------------

          //  F A M I L Y   M E M B E R S   N U M   F I E L D

          // -----------------------------------
          TextFormField(
            controller: null,
            initialValue: widget.report['familyMembersNumber']?.toString(),
            textInputAction: TextInputAction.next,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              label: Text("عدد افراد العائلة"),
            ),
            onSaved: (newValue) =>
                widget.report.addAll({"familyMembersNumber": newValue}),
          ),
          const SizedBox(height: _gap),

          // -----------------------------------

          //  F A M I L Y   C H I L D R E N   N U M   F I E L D

          // -----------------------------------
          TextFormField(
            controller: null,
            initialValue: widget.report['familyChildrenNumber']?.toString(),
            textInputAction: TextInputAction.next,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            keyboardType: TextInputType.phone,
            decoration: const InputDecoration(
              label: Text("عدد الابناء"),
            ),
            onSaved: (newValue) =>
                widget.report.addAll({"familyChildrenNumber": newValue}),
          ),
          const SizedBox(height: _gap),

          // -----------------------------------

          //  F A M I L Y   H A S - M E D I C A L   F I E L D

          // -----------------------------------
          Row(
            children: [
              Checkbox(
                  value: familyHasMedicalStatus,
                  onChanged: (value) {
                    widget.report.addAll({"familyHasMedicalStatus": value});
                    setState(() {
                      familyHasMedicalStatus = value ?? false;
                    });
                  }),
              const Text("هل يوجد حالات صحية لدى العائلة؟"),
            ],
          ),

          // -----------------------------------

          //  F A M I L Y   H A S - D I S A B I L I T Y   F I E L D

          // -----------------------------------
          Row(
            children: [
              Checkbox(
                  value: familyHasDisability,
                  onChanged: (value) {
                    widget.report.addAll({"familyHasDisability": value});
                    setState(() {
                      familyHasDisability = value ?? false;
                    });
                  }),
              const Text("هل يوجد حالات اعاقة لدى العائلة؟"),
            ],
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
