import 'package:flutter/material.dart';
import 'package:vollect/core/enums.dart';

class EducationInfoPage extends StatefulWidget {
  const EducationInfoPage({super.key, required this.report});
  final Map<String, dynamic> report;

  @override
  State<EducationInfoPage> createState() => _EducationInfoPageState();
}

class _EducationInfoPageState extends State<EducationInfoPage>
    with AutomaticKeepAliveClientMixin {
  static const _gap = 10.0;
  AcadimicLevel? acadimicLevel;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30.0),
      child: Column(
        children: [
          // -----------------------------------

          //  A C A D I M I C   L E V E L

          // -----------------------------------
          DropdownButtonFormField<AcadimicLevel>(
            value: acadimicLevel,
            items: AcadimicLevel.values
                .map((al) => DropdownMenuItem(
                      value: al,
                      child: Text(al.arName),
                    ))
                .toList(),
            decoration: const InputDecoration(
              label: Text("مستوى التحصيل العلمي"),
            ),
            onChanged: (value) =>
                setState(() => acadimicLevel = value ?? acadimicLevel),
            onSaved: (newValue) =>
                widget.report.addAll({"acadimicLevel": newValue?.name}),
          ),
          const SizedBox(height: _gap),

          // -----------------------------------

          //  C E R T I F I C A T I O N

          // -----------------------------------
          TextFormField(
            initialValue: widget.report['certification'],
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(
              label: Text("الشهادة الحاصل عليها"),
            ),
            onSaved: (newValue) =>
                widget.report.addAll({"certification": newValue}),
          ),
          const SizedBox(height: _gap),

          // -----------------------------------

          //  S T U D Y   A D D R E S S

          // -----------------------------------
          TextFormField(
            initialValue: widget.report['studyAddress'],
            textInputAction: TextInputAction.done,
            decoration: const InputDecoration(
              label: Text("مكان الدراسة"),
            ),
            onSaved: (newValue) =>
                widget.report.addAll({"studyAddress": newValue}),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
