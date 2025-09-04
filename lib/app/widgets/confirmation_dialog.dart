import 'package:flutter/material.dart';

enum ConfirmationType { delete, import, export }

Future<bool?> showActionConfirmationDialog({
  required BuildContext context,
  required ConfirmationType type,
  bool isDismissable = true,
}) async {
  String title = '';
  String content = '';
  String confirmText = '';
  Color confirmColor = Colors.blue;

  switch (type) {
    case ConfirmationType.delete:
      title = 'تأكيد الحذف';
      content =
          'هل أنت متأكد أنك تريد حذف هذا العنصر؟ لا يمكن التراجع عن هذه العملية.';
      confirmText = 'نعم، احذف';
      confirmColor = Colors.red;
      break;
    case ConfirmationType.import:
      title = 'تأكيد الاستيراد';
      content =
          'هل ترغب في استيراد البيانات من جدول خارجي؟ سيتم تحديث النظام بناءً على هذه المعلومات.';
      confirmText = 'نعم، استورد';
      confirmColor = Colors.green;
      break;
    case ConfirmationType.export:
      title = 'تأكيد التصدير';
      content =
          'هل تريد تصدير البيانات إلى ملف Excel؟ سيتم إنشاء ملف قابل للتنزيل يحتوي على المعلومات الحالية.';
      confirmText = 'نعم، صدّر';
      confirmColor = Colors.teal;
      break;
  }

  return showDialog<bool>(
    context: context,
    barrierDismissible: isDismissable,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title, textAlign: TextAlign.right),
        content: Text(content, textAlign: TextAlign.right),
        actionsAlignment: MainAxisAlignment.end,
        actions: <Widget>[
          TextButton(
            child: const Text('إلغاء'),
            onPressed: () => Navigator.of(context).pop(false),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: confirmColor, foregroundColor: Colors.white),
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: Text(confirmText),
          ),
        ],
      );
    },
  );
}
