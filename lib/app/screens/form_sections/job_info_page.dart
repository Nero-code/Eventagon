import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:vollect/core/enums.dart';

class JobInfoPage extends StatefulWidget {
  const JobInfoPage({super.key, required this.report});

  final Map<String, dynamic> report;

  @override
  State<JobInfoPage> createState() => _JobInfoPageState();
}

class _JobInfoPageState extends State<JobInfoPage>
    with AutomaticKeepAliveClientMixin {
  static const _gap = 10.0;

  final salaryC = TextEditingController();

  JobType? jobType;

  @override
  void initState() {
    super.initState();
    jobType = JobType.values
        .where((jt) => jt.name == widget.report['jobType'])
        .firstOrNull;

    salaryC.text = widget.report['monthlySalary'] ?? '';
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 30.0),
      child: Column(
        children: [
          // -----------------------------------

          //  J O B   T Y P E

          // -----------------------------------
          DropdownButtonFormField<JobType>(
            value: jobType,
            decoration: const InputDecoration(labelText: 'نوع الوظيفة'),
            items: JobType.values
                .map((jt) => DropdownMenuItem(
                      value: jt,
                      child: Text(jt.arName),
                    ))
                .toList(),
            onChanged: (value) => setState(() => jobType = value ?? jobType),
            onSaved: (newValue) => widget.report.addAll({
              "jobType_code": newValue?.code, // USELESS
              "jobType": newValue?.arName,
            }),
          ),
          const SizedBox(height: _gap),

          // -----------------------------------

          //  M O N T H L Y   S A L A R Y

          // -----------------------------------
          TextFormField(
            controller: salaryC,
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(labelText: "الراتب (ليرة)"),
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            keyboardType: TextInputType.phone,
            onChanged: (value) {
              if (salaryC.text.isNotEmpty) {
                salaryC.text = NumberFormat.decimalPattern('en')
                    .format(int.tryParse(salaryC.text) ?? 0);
              }
            },
            onSaved: (newValue) =>
                widget.report.addAll({"monthlySalary": newValue}),
          ),
          const SizedBox(height: _gap),

          // -----------------------------------

          //  J O B   D E S C R I P T I O N

          // -----------------------------------
          TextFormField(
            initialValue: widget.report['jobDescription'],
            textInputAction: TextInputAction.next,
            decoration: const InputDecoration(labelText: "شرح الوظيفة"),
            onSaved: (newValue) =>
                widget.report.addAll({"jobDescription": newValue}),
          ),
        ],
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
