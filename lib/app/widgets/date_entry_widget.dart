import 'package:flutter/material.dart';

class DateEntryField extends FormField<DateTime> {
  DateEntryField({
    super.key,
    required FormFieldSetter<DateTime> super.onSaved,
    super.validator,
    super.initialValue,
    AutovalidateMode super.autovalidateMode = AutovalidateMode.disabled,
  }) : super(
          builder: (FormFieldState<DateTime> state) {
            return _DateEntryFieldContent(state: state);
          },
        );
}

class _DateEntryFieldContent extends StatefulWidget {
  final FormFieldState<DateTime> state;

  const _DateEntryFieldContent({required this.state});

  @override
  State<_DateEntryFieldContent> createState() => _DateEntryFieldContentState();
}

class _DateEntryFieldContentState extends State<_DateEntryFieldContent> {
  String? year, month, day;

  void _updateState() {
    final y = int.tryParse(year ?? '');
    final m = int.tryParse(month ?? '');
    final d = int.tryParse(day ?? '');

    if (y != null && m != null && d != null) {
      try {
        widget.state.didChange(DateTime(y, m, d));
      } catch (_) {
        widget.state.didChange(null);
      }
    } else {
      widget.state.didChange(null);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'Year'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  year = value;
                  _updateState();
                },
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'Month'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  month = value;
                  _updateState();
                },
              ),
            ),
            const SizedBox(width: 8),
            Expanded(
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'Day'),
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  day = value;
                  _updateState();
                },
              ),
            ),
          ],
        ),
        if (widget.state.hasError)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              widget.state.errorText ?? '',
              style: TextStyle(color: Theme.of(context).colorScheme.error),
            ),
          ),
      ],
    );
  }
}
