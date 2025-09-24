import 'dart:io';
import 'dart:typed_data';
import 'package:flutter_file_dialog/flutter_file_dialog.dart';

class FileManagerService {
  /// Pick a single file (images or documents)
  Future<File?> pickFile({bool isImage = false}) async {
    final params = OpenFileDialogParams(
      dialogType:
          isImage ? OpenFileDialogType.image : OpenFileDialogType.document,
    );
    final path = await FlutterFileDialog.pickFile(params: params);
    return path != null ? File(path) : null;
  }

  /// Save a file to a chosen location
  Future<String?> saveFile({
    required String fileName,
    required List<int> bytes,
    String? mimeType,
  }) async {
    final params = SaveFileDialogParams(
      data: Uint8List.fromList(bytes),
      fileName: fileName,
      mimeTypesFilter: [mimeType ?? ''],
    );
    return await FlutterFileDialog.saveFile(params: params);
  }

  /// Save directly to a picked directory
  Future<String?> saveToDirectory({
    // required String directory,
    required String fileName,
    required List<int> bytes,
    String? mimeType,
    bool replace = false,
  }) async {
    final directory = await FlutterFileDialog.pickDirectory();
    return await FlutterFileDialog.saveFileToDirectory(
      directory: directory!,
      data: Uint8List.fromList(bytes),
      fileName: fileName,
      replace: replace,
      mimeType:
          'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet',
    );
  }
}
