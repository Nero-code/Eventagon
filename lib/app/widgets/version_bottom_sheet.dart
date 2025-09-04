import 'package:flutter/material.dart';
import 'package:vollect/core/constants.dart';

class VersionBottomSheet extends StatelessWidget {
  const VersionBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: 15,
      child: const Center(
          child: Text('v$APP_VERSION', style: TextStyle(fontSize: 10))),
    );
  }
}
