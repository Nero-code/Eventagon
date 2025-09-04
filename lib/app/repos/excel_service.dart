import 'package:excel/excel.dart';
import 'package:flutter/foundation.dart';
import 'package:vollect/app/classes/beneficiary.dart';
import 'package:vollect/app/data/database.dart';
import 'package:vollect/app/data/database_extensions.dart';

class ExcelService {
  /// Export a single Beneficiary to Excel and let user choose save location
  Future<List<int>> exportExcel(List<Beneficiary> content) async {
    final excel = Excel.createExcel();
    final sheet = excel['Sheet1'];

    // Header + Data
    sheet.appendRow(BeneficiaryEntity.getExcelHeader());
    for (var row in content) {
      sheet.appendRow(row.toExcelRow());
    }
    if (kDebugMode) {
      print(sheet.rows);
    }

    final bytes = excel.encode();
    if (bytes == null) throw Exception('Failed to encode Excel file');

    return bytes;
  }

  /// Import multiple Reports from an Excel file selected by the user
  Future<List<BeneficiarysCompanion>> importExcel(List<int> bytes) async {
    // Decode raw bytes into excel format.
    final excel = Excel.decodeBytes(bytes);
    final sheet = excel['Sheet1'];
    if (kDebugMode) {
      print("Imported Sheet ${sheet.toString()}");
    }

    if (sheet.rows.length < 2) {
      throw Exception('Excel file is empty or malformed');
    }

    // Extract Beneficiary model from excel table.
    //
    // Header
    final header =
        sheet.rows.first.map((cell) => cell?.value.toString()).toList();

    if (kDebugMode) {
      print("Got Header ${header.length}: $header");
    }
    // Data
    final List<BeneficiarysCompanion> reports = [];
    for (int i = 1; i < sheet.rows.length; i++) {
      // print("Rows-$i: ${sheet.rows[i]}");
      final row = sheet.rows[i].map((cell) {
        print('cell $i ${cell?.cellIndex} | ${cell?.value.toString()}');
        // return "${cell?.value}".replaceAll(RegExp(r'[^\x00-\x7F]+'), '');

        return "${cell?.value}";
      }).toList();

      for (int j = 0; j < header.length; j++) {
        print({header[j]!: row[j].runtimeType});
      }
      final Map<String, dynamic> json = {
        for (int j = 0; j < header.length; j++)
          header[j]!: row[j].isEmpty ? null : row[j],
      };
      reports.add(DatabaseCompanionExtension.insertFromJson(json));
    }

    print('✅ Imported ${reports.length} reports');
    return reports;
  }
}
