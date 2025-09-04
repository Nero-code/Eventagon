import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vollect/app/classes/beneficiary.dart';
import 'package:vollect/app/data/benefitters_datasource.dart';
import 'package:vollect/app/data/database.dart';
import 'package:vollect/app/repos/benefitters_repository.dart';
import 'package:vollect/app/repos/excel_service.dart';
import 'package:vollect/app/repos/file_manager_service.dart';
import 'package:vollect/app/repos/user_controller.dart';

abstract class ServiceLocator {
  static late final SharedPreferences prefs;
  static late final UserController userController;
  static late final BenefittersDatasource benefitterSource;
  static late final ExcelService excelService;
  static late final FileManagerService fileManagerService;
  static late final AppDatabase _database;
  static late final BenefittersRepository repository;
  static final List<Village> villages = [];

  static Future<void> init() async {
    prefs = await SharedPreferences.getInstance();
    _database = AppDatabase();
    userController = UserController(preferences: prefs);

    benefitterSource = BenefittersDatasource(database: _database);
    excelService = ExcelService();
    fileManagerService = FileManagerService();

    repository = BenefittersRepository(
        excelService: excelService,
        fileManagerService: fileManagerService,
        benefitterSource: benefitterSource,
        userController: userController);

    // ------------------------------
    // Parse json file into villages,
    // then sort them alphabetically.
    final villagesJson =
        await rootBundle.loadString('lib/assets/villages.json');
    final vList = jsonDecode(villagesJson) as List<dynamic>;
    for (var v in vList) {
      villages.add(Village.fromJson(v));
    }
    villages.sort((a, b) => a.name.compareTo(b.name));
    // ------------------------------
  }
}
