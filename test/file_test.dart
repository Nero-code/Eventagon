import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vollect/app/classes/beneficiary.dart';

void main() {
  group("Local json file", () {
    test("Should read json file from assets folder", () async {
      WidgetsFlutterBinding.ensureInitialized();
      final f = await rootBundle.loadString('lib/assets/villages.json');
      final villagesList = jsonDecode(f) as List<dynamic>;
      final vList = <Village>[];
      for (var v in villagesList) {
        vList.add(Village.fromJson(v));
      }
      expect(vList.length, 131);
    });
  });
}
