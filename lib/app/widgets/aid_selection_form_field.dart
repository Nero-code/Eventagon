import 'package:flutter/material.dart';
import 'package:vollect/core/enums.dart';

class AidSelectionFormField extends FormField<Set<AidType>> {
  AidSelectionFormField({
    super.key,
    required String title,
    super.initialValue,
    super.onSaved,
    super.validator,
  }) : super(
          builder: (FormFieldState<Set<AidType>> state) {
            print("aidselection state: ${state.value}");
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Wrap(
                  spacing: 8.0,
                  direction: Axis.horizontal,
                  children: AidType.values.map((option) {
                    final isSelected = state.value?.contains(option) ?? false;
                    return ChoiceChip.elevated(
                      label: Text(option.arName),
                      selected: isSelected,
                      onSelected: (selected) {
                        final newValue = Set<AidType>.from(state.value ?? {});
                        selected
                            ? newValue.add(option)
                            : newValue.remove(option);
                        state.didChange(newValue);
                      },
                    );
                  }).toList(),
                ),
                if (state.hasError)
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      state.errorText!,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
              ],
            );
          },
        );
}
