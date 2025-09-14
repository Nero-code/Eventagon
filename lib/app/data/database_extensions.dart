import 'package:drift/drift.dart';
import 'package:excel/excel.dart';
import 'package:intl/intl.dart';
import 'package:vollect/app/data/database.dart';
import 'package:vollect/core/enums.dart';

extension DatabaseExtension on Beneficiary {
  static const _escKey = '';
  List<CellValue> toExcelRow() {
    return [
      //
      // Personal Section
      //
      TextCellValue(firstName),
      TextCellValue(fatherName),
      TextCellValue(lastName),
      TextCellValue(motherName ?? _escKey),
      TextCellValue(nationalNumber ?? _escKey),

      TextCellValue(gender?.code.toString() ?? _escKey), // Added Column
      TextCellValue(gender?.arName ?? _escKey),

      TextCellValue(socialStatus.code.toString()), // Added Column
      TextCellValue(socialStatus.arName),
      TextCellValue(
          birthDate != null ? DateFormat.yMd().format(creationTime!) : _escKey),
      TextCellValue(contactNumber ?? _escKey),

      // Medical Section
      TextCellValue(medicalStatus?.code.toString() ?? _escKey),
      TextCellValue(medicalStatus?.arName ?? _escKey),
      TextCellValue(disabilityStatus?.code.toString() ?? _escKey),
      TextCellValue(disabilityStatus?.arName ?? _escKey),

      //
      // Partner Section
      //
      TextCellValue(partnerName ?? _escKey),
      TextCellValue(partnerNationalNum ?? _escKey),
      TextCellValue(partnerPhoneNum ?? _escKey),
      TextCellValue(partnerBirthDate != null
          ? DateFormat.yMd().format(creationTime!)
          : _escKey),

      // Family Section
      TextCellValue(familybookNumber ?? _escKey),
      TextCellValue(familyMembersNumber?.toString() ?? _escKey),
      TextCellValue(familyChildrenNumber?.toString() ?? _escKey),
      TextCellValue(familyHasMedicalStatus?.toString() ?? _escKey),
      TextCellValue(familyHasDisability?.toString() ?? _escKey),

      // Residence Section
      TextCellValue(originalResidenceType?.code.toString() ?? _escKey),
      TextCellValue(originalResidenceType?.arName ?? _escKey),
      TextCellValue(originalResidenceAddress ?? _escKey),
      TextCellValue(originalResidenceRegion ?? _escKey),
      TextCellValue(originalResidenceStatus?.code.toString() ?? _escKey),
      TextCellValue(originalResidenceStatus?.arName ?? _escKey),
      TextCellValue(currentResidenceRegion ?? _escKey),
      TextCellValue(currentResidenceAddress ?? _escKey),
      TextCellValue(currentResidenceType?.code.toString() ?? _escKey),
      TextCellValue(currentResidenceType?.arName ?? _escKey),

      // Education Section
      TextCellValue(acadimicLevel?.code.toString() ?? _escKey),
      TextCellValue(acadimicLevel?.arName ?? _escKey),
      TextCellValue(certification ?? _escKey),
      TextCellValue(studyAddress ?? _escKey),

      // Job section
      TextCellValue(jobType?.code.toString() ?? _escKey),
      TextCellValue(jobType?.arName ?? _escKey),
      TextCellValue(jobDecription ?? _escKey),
      TextCellValue(monthlySalary ?? _escKey),

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
        birthDate: Value<DateTime?>(
            DateFormat.yMd().tryParse(json['birthDate'] ?? '')),
        gender: Value<Gender>(Gender.values.firstWhere(
          (g) => g.name == json['gender'],
          orElse: () => Gender.male,
        )),
        socialStatus: SocialStatus.values.firstWhere(
            (ss) => ss.name == json['socialStatus'],
            orElse: () => SocialStatus.single),
        contactNumber: Value<String?>(json['contactNumber']),

        // Medical-personal
        medicalStatus: Value<MedicalStatus?>(json['medicalStatus']),
        disabilityStatus: Value<DisabilityStatus?>(json['']),

        // Partner Section
        partnerName: Value<String?>(json['partnerName']),
        partnerNationalNum: Value<String?>(json['partnerNationalNum']),
        partnerBirthDate: Value<DateTime?>(
            DateFormat.yMd().tryParse(json['partnerBirthDate'] ?? '')),
        partnerPhoneNum: Value<String?>(json['partnerPhoneNum']),

        // Family Section
        familybookNumber: Value<String?>(json['familybookNumber']),
        familyMembersNumber:
            Value<int?>(int.tryParse(json['familyMembersNumber'] ?? '')),
        familyChildrenNumber:
            Value<int?>(int.tryParse(json['familyChildrenNumber'] ?? '')),

        // Medical-family
        familyHasMedicalStatus:
            Value<bool?>(bool.tryParse(json['familyHasMedicalStatus'] ?? '')),
        familyHasDisability:
            Value<bool?>(bool.tryParse(json['familyHasDisability'] ?? '')),

        // Residence
        originalResidenceType:
            Value<ResidenceType?>(json['originalResidenceType']),
        originalResidenceAddress:
            Value<String?>(json['originalResidenceAddress']),
        originalResidenceRegion:
            Value<String?>(json['originalResidenceRegion']),
        originalResidenceStatus:
            Value<ResidenceStatus?>(json['originalResidenceStatus']),
        currentResidenceRegion: Value<String?>(json['currentResidenceRegion']),
        currentResidenceAddress:
            Value<String?>(json['currentResidenceAddress']),
        currentResidenceType:
            Value<CurrentResidenceType?>(json['currentResidenceType']),

        // AUX
        notes: Value<String?>(json['notes']),
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
        birthDate: Value<DateTime?>(
            DateFormat.yMd().tryParse(json['birthDate'] ?? '')),
        gender: Value<Gender>(Gender.values.firstWhere(
          (g) => g.name == json['gender'],
          orElse: () => Gender.male,
        )),
        socialStatus: Value<SocialStatus>(SocialStatus.values.firstWhere(
            (ss) => ss.name == json['socialStatus'],
            orElse: () => SocialStatus.single)),
        contactNumber: Value<String?>(json['contactNumber']),

        // Medical-personal
        medicalStatus: Value<MedicalStatus?>(json['medicalStatus']),
        disabilityStatus: Value<DisabilityStatus?>(json['disabilityStatus']),

        // Partner Section
        partnerName: Value<String?>(json['partnerName']),
        partnerNationalNum: Value<String?>(json['partnerNationalNum']),
        partnerBirthDate: Value<DateTime?>(
            DateFormat.yMd().tryParse(json['partnerBirthDate'] ?? '')),
        partnerPhoneNum: Value<String?>(json['partnerPhoneNum']),

        // Family Section
        familybookNumber: Value<String?>(json['familybookNumber']),
        familyMembersNumber: Value<int?>(json['familyMembersNumber']),

        // Medical-family
        familyHasMedicalStatus: Value<bool?>(json['familyMedicalStatus']),
        familyHasDisability:
            Value<bool?>(bool.tryParse(json['familyHasDisability'] ?? '')),
        // Residence

        // AUX
        notes: Value<String?>(json['notes']),
        creationTime: Value<DateTime>(
            DateTime.fromMillisecondsSinceEpoch(json['creationTime'])),
        creationLocation: Value<String?>(json['creationLocation']),
      );
}
