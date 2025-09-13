import 'package:drift/drift.dart';
import 'package:excel/excel.dart';
import 'package:intl/intl.dart';
import 'package:vollect/app/data/database.dart';
import 'package:vollect/core/enums.dart';

extension DatabaseExtension on Beneficiary {
  static const _escKey = '';
  List<CellValue> toExcelRow() {
    return [
      // Personal Section
      TextCellValue(firstName),
      TextCellValue(fatherName),
      TextCellValue(lastName),
      TextCellValue(motherName ?? _escKey),
      TextCellValue(nationalNumber ?? _escKey),
      TextCellValue(gender?.name ?? _escKey),
      TextCellValue(socialStatus.name),
      TextCellValue(
          birthDate != null ? DateFormat.yMd().format(creationTime!) : _escKey),
      TextCellValue(contactNumber ?? _escKey),

      // Partner Section
      TextCellValue(partnerName ?? _escKey),
      TextCellValue(partnerNationalNum ?? _escKey),
      TextCellValue(partnerBirthDate != null
          ? DateFormat.yMd().format(creationTime!)
          : _escKey),
      TextCellValue(partnerPhoneNum ?? _escKey),

      // Family Section
      TextCellValue(familybookNumber ?? _escKey),
      TextCellValue(familyMembersNumber ?? _escKey),

      // Residence Section
      TextCellValue(mainResidence ?? _escKey),
      TextCellValue(currentResidence ?? _escKey),
      TextCellValue(residenceType ?? _escKey),
      TextCellValue(residenceStatus ?? _escKey),
      TextCellValue(shelterName ?? _escKey),

      // Medical Section
      TextCellValue(medicalStatus ?? _escKey),
      TextCellValue(hasDisability?.toString() ?? _escKey),

      // Other
      TextCellValue(notes ?? _escKey),
      TextCellValue(creationTime != null
          ? DateFormat.yMd().format(creationTime!)
          : _escKey),
      TextCellValue(creationLocation ?? _escKey),
    ];
  }

  String get fullName => "$firstName $fatherName $lastName";
}

abstract class DatabaseCompanionExtension {
  static BeneficiarysCompanion insertFromJson(Map<String, dynamic> json) =>
      BeneficiarysCompanion.insert(
        // Personal
        firstName: json['firstName'],
        fatherName: json['fatherName'],
        lastName: json['lastName'],
        nationalNumber: Value<String?>(json['nationalNumber']),
        motherName: Value<String?>(json['motherName']),
        birthDate:
            Value<DateTime?>(DateFormat.yMd().tryParse(json['birthDate'])),
        gender: Value<Gender>(Gender.values.firstWhere(
          (g) => g.name == json['gender'],
          orElse: () => Gender.male,
        )),
        socialStatus: SocialStatus.values.firstWhere(
            (ss) => ss.name == json['socialStatus'],
            orElse: () => SocialStatus.single),
        contactNumber: Value<String?>(json['contactNumber']),

        // Medical-personal
        medicalStatus: Value<String?>(json['medicalStatus']),
        hasDisability: Value<bool?>(json['hasDisability']),

        // Partner Section
        partnerName: Value<String?>(json['partnerName']),
        partnerNationalNum: Value<String?>(json['partnerNationalNum']),
        partnerBirthDate: Value<DateTime?>(
            DateFormat.yMd().tryParse(json['partnerBirthDate'])),
        partnerPhoneNum: Value<String?>(json['partnerPhoneNum']),

        // Family Section
        familybookNumber: Value<String?>(json['familybookNumber']),
        familyMembersNumber: Value<String?>(json['familyMembersNumber']),

        // Medical-family
        familyMedicalStatus: Value<String?>(json['familyMedicalStatus']),
        familyHasDisability:
            Value<bool?>(bool.tryParse(json['familyHasDisability'])),
        // Residence
        mainResidence: Value<String?>(json['mainResidence']),
        currentResidence: Value<String?>(json['currentResidence']),
        residenceType: Value<String?>(json['residenceType']),
        residenceStatus: Value<String?>(json['residenceStatus']),
        shelterName: Value<String?>(json['shelterName']),
        notes: Value<String?>(json['notes']),
        creationTime: Value<DateTime>(DateTime.parse(json['creationTime'])),
        creationLocation: Value<String?>(json['creationLocation']),
      );

  static BeneficiarysCompanion updateFromJson(Map<String, dynamic> json) =>
      BeneficiarysCompanion(
        id: Value<int>(json['id'] as int),
        // Personal
        firstName: json['firstName'],
        fatherName: json['fatherName'],
        lastName: json['lastName'],
        nationalNumber: Value<String?>(json['nationalNumber']),
        motherName: Value<String?>(json['motherName']),
        birthDate:
            Value<DateTime?>(DateFormat.yMd().tryParse(json['birthDate'])),
        gender: Value<Gender>(Gender.values.firstWhere(
          (g) => g.name == json['gender'],
          orElse: () => Gender.male,
        )),
        socialStatus: Value<SocialStatus>(SocialStatus.values.firstWhere(
            (ss) => ss.name == json['socialStatus'],
            orElse: () => SocialStatus.single)),
        contactNumber: Value<String?>(json['contactNumber']),

        // Medical-personal
        medicalStatus: Value<String?>(json['medicalStatus']),
        hasDisability: Value<bool?>(json['hasDisability']),

        // Partner Section
        partnerName: Value<String?>(json['partnerName']),
        partnerNationalNum: Value<String?>(json['partnerNationalNum']),
        partnerBirthDate: Value<DateTime?>(
            DateFormat.yMd().tryParse(json['partnerBirthDate'])),
        partnerPhoneNum: Value<String?>(json['partnerPhoneNum']),

        // Family Section
        familybookNumber: Value<String?>(json['familybookNumber']),
        familyMembersNumber: Value<String?>(json['familyMembersNumber']),

        // Medical-family
        familyMedicalStatus: Value<String?>(json['familyMedicalStatus']),
        familyHasDisability:
            Value<bool?>(bool.tryParse(json['familyHasDisability'])),
        // Residence
        mainResidence: Value<String?>(json['mainResidence']),
        currentResidence: Value<String?>(json['currentResidence']),
        residenceType: Value<String?>(json['residenceType']),
        residenceStatus: Value<String?>(json['residenceStatus']),
        shelterName: Value<String?>(json['shelterName']),
        notes: Value<String?>(json['notes']),
        creationTime: Value<DateTime>(
            DateTime.fromMillisecondsSinceEpoch(json['creationTime'])),
        creationLocation: Value<String?>(json['creationLocation']),
      );
}
