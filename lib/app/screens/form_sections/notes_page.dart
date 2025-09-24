import 'package:flutter/material.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key, required this.report});

  final Map<String, dynamic> report;

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage>
    with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        initialValue: widget.report['notes'],
        decoration: const InputDecoration(labelText: "ملاحظات"),
        minLines: 5,
        maxLines: null,
        onSaved: (newValue) => widget.report.addAll({'notes': newValue}),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
