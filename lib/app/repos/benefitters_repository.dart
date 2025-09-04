import 'package:vollect/app/data/benefitters_datasource.dart';
import 'package:vollect/app/data/database.dart';
import 'package:vollect/app/repos/file_manager_service.dart';
import 'package:vollect/app/repos/user_controller.dart';

import 'excel_service.dart';

class BenefittersRepository {
  final ExcelService _excelService;
  final FileManagerService _fileManagerService;
  final BenefittersDatasource _benefitterSource;
  final UserController _userController;

  const BenefittersRepository(
      {required ExcelService excelService,
      required FileManagerService fileManagerService,
      required BenefittersDatasource benefitterSource,
      required UserController userController})
      : _excelService = excelService,
        _fileManagerService = fileManagerService,
        _benefitterSource = benefitterSource,
        _userController = userController;

  /// Import Excel file, parse into Reports, and save to DB
  Future<int> importFromExcel() async {
    try {
      final excelFile = await _fileManagerService.pickFile();
      if (excelFile == null) return -1;

      final List<BeneficiarysCompanion> reports =
          await _excelService.importExcel(await excelFile.readAsBytes());

      if (reports.isEmpty) {
        print('⚠️ No reports found in Excel file');
        return 0;
      }

      for (var b in reports) {
        await _benefitterSource.insertBenefitter(b);
      }

      print('✅ Imported ${reports.length} reports into database');
      return reports.length;
    } catch (e) {
      print('❌ Failed to import reports: $e');
      return -1;
    }
  }

  /// Export all reports from DB to Excel and save to file system
  Future<int> exportToExcel() async {
    try {
      final List<Beneficiary> reports =
          await _benefitterSource.getAllBenefitters();

      if (reports.isEmpty) {
        print('⚠️ No reports found in database');
        return 0;
      }
      final fileName = (await _userController.getUser())!.userStamp;
      final excelBytes = await _excelService.exportExcel(reports);

      await _fileManagerService.saveToDirectory(
          fileName: fileName, bytes: excelBytes);

      print('✅ Exported report to Excel');
      return reports.length;
    } catch (e) {
      print('❌ Failed to export reports: $e');
      return -1;
    }
  }

  Future<List<Beneficiary>> getAllBenefitters() async {
    return await _benefitterSource.getAllBenefitters();
  }

  Future<void> insertBenefitter(BeneficiarysCompanion i) async {
    await _benefitterSource.insertBenefitter(i);
  }

  Future<void> updateBenefitter(BeneficiarysCompanion u) async {
    await _benefitterSource.updateBenefitter(u);
  }

  Future<void> deleteBenefitter(BeneficiarysCompanion d) async {
    await _benefitterSource.deleteBenefitter(d);
  }
}
