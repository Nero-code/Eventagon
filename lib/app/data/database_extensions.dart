import 'package:drift/drift.dart';
import 'package:excel/excel.dart';
import 'package:intl/intl.dart';
import 'package:vollect/app/classes/beneficiary.dart';
import 'package:vollect/app/data/database.dart';

extension DatabaseExtension on Beneficiary {
  static const _escKey = '';
  List<CellValue> toExcelRow() {
    return [
      TextCellValue(firstName),
      TextCellValue(fatherName),
      TextCellValue(lastName),
      TextCellValue(nationalNumber ?? _escKey),
      TextCellValue(familybookNumber ?? _escKey),
      TextCellValue(socialStatus.name),
      TextCellValue(contactNumber ?? _escKey),
      TextCellValue(partnerName ?? _escKey),
      TextCellValue(familyMembersNumber ?? _escKey),
      TextCellValue(mainResidence ?? _escKey),
      TextCellValue(currentResidence ?? _escKey),
      TextCellValue(residenceType ?? _escKey),
      TextCellValue(residenceStatus ?? _escKey),
      TextCellValue(shelterName ?? _escKey),
      TextCellValue(medicalStatus ?? _escKey),
      TextCellValue(notes ?? _escKey),
      TextCellValue(
          createdAt != null ? DateFormat('yyyy-MM-dd').format(createdAt!) : ''),
    ];
  }

  String get fullName => "$firstName $fatherName $lastName";
}

abstract class DatabaseCompanionExtension {
  static BeneficiarysCompanion insertFromJson(Map<String, dynamic> json) =>
      BeneficiarysCompanion.insert(
        firstName: json['firstName'],
        fatherName: json['fatherName'],
        lastName: json['lastName'],
        nationalNumber: Value<String?>(json['nationalNumber']),
        familybookNumber: Value<String?>(json['familybookNumber']),
        socialStatus: SocialStatus.values.firstWhere(
            (ss) => ss.name == json['socialStatus'],
            orElse: () => SocialStatus.single),
        contactNumber: Value<String?>(json['contactNumber']),
        partnerName: Value<String?>(json['partnerName']),
        familyMembersNumber: Value<String?>(json['familyMembersNumber']),
        mainResidence: Value<String?>(json['mainResidence']),
        currentResidence: Value<String?>(json['currentResidence']),
        residenceType: Value<String?>(json['residenceType']),
        residenceStatus: Value<String?>(json['residenceStatus']),
        shelterName: Value<String?>(json['shelterName']),
        medicalStatus: Value<String?>(json['medicalStatus']),
        notes: Value<String?>(json['notes']),
      );

  static BeneficiarysCompanion updateFromJson(Map<String, dynamic> json) =>
      BeneficiarysCompanion(
        id: Value<int>(json['id'] as int),
        firstName: Value<String>(json['firstName']),
        fatherName: Value<String>(json['fatherName']),
        lastName: Value<String>(json['lastName']),
        nationalNumber: Value<String?>(json['nationalNumber']),
        familybookNumber: Value<String?>(json['familybookNumber']),
        socialStatus: Value(SocialStatus.values.firstWhere(
            (ss) => ss.name == json['socialStatus'],
            orElse: () => SocialStatus.single)),
        contactNumber: Value<String?>(json['contactNumber']),
        partnerName: Value<String?>(json['partnerName']),
        familyMembersNumber: Value<String?>(json['familyMembersNumber']),
        mainResidence: Value<String?>(json['mainResidence']),
        currentResidence: Value<String?>(json['currentResidence']),
        residenceType: Value<String?>(json['residenceType']),
        residenceStatus: Value<String?>(json['residenceStatus']),
        shelterName: Value<String?>(json['shelterName']),
        medicalStatus: Value<String?>(json['medicalStatus']),
        notes: Value<String?>(json['notes']),
        createdAt: Value<DateTime>(
            DateTime.fromMillisecondsSinceEpoch(json['createdAt'])),
      );
}
