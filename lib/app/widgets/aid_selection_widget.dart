import 'package:flutter/material.dart';
import 'package:vollect/core/enums.dart';

class AidSelectionWidget extends StatelessWidget {
  const AidSelectionWidget(
      {super.key, required this.selectedItems, required this.onTapOption});

  final void Function(AidType option, bool select) onTapOption;
  final Set<AidType> selectedItems;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: MediaQuery.sizeOf(context).width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('حدد نوع الاغاثة',
              style: Theme.of(context).textTheme.bodyMedium),
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: AidType.values.map((item) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: ChoiceChip.elevated(
                    label: Text(item.arName),
                    selected: selectedItems.contains(item),
                    onSelected: (select) => onTapOption(item, select),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
