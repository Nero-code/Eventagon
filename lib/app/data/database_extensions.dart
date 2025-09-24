import 'package:drift/drift.dart';
import 'package:excel/excel.dart';
import 'package:intl/intl.dart';
import 'package:vollect/app/data/database.dart';
import 'package:vollect/core/enums.dart';
import 'package:vollect/core/mappers.dart';
import 'package:vollect/di.dart';

extension DatabaseExtension on Beneficiary {
  static const _escKey = '';
  List<CellValue> toExcelRow() {
    print(toJson());
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

      TextCellValue(aidRequired ?? _escKey), // Added Column for Codes
      TextCellValue(aidRequired
              ?.split(',')
              .map<String?>((c) => AidType.values
                  .where((at) => "${at.code}" == c)
                  .firstOrNull
                  ?.arName)
              .join(',\n') ??
          _escKey),

      TextCellValue(socialStatus.code.toString()), // Added Column
      TextCellValue(socialStatus.arName),
      TextCellValue(
          birthDate != null ? DateFormat.yMd().format(birthDate!) : _escKey),
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
          ? DateFormat.yMd().format(partnerBirthDate!)
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

      TextCellValue(ServiceLocator.villages
              .where((v) => v.name == originalResidenceRegion)
              .firstOrNull
              ?.code ??
          _escKey), // code
      TextCellValue(originalResidenceRegion ?? _escKey), // arname

      TextCellValue(originalResidenceStatus?.code.toString() ?? _escKey),
      TextCellValue(originalResidenceStatus?.arName ?? _escKey),

      TextCellValue(ServiceLocator.villages
              .where((v) => v.name == currentResidenceRegion)
              .firstOrNull
              ?.code ??
          _escKey), // code
      TextCellValue(currentResidenceRegion ?? _escKey), // arname

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
      TextCellValue(jobDescription ?? _escKey),
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
  static BeneficiarysCompanion insertFromJson(Map<String, dynamic> json) {
    return BeneficiarysCompanion.insert(
      // Personal
      firstName: json['firstName'],
      fatherName: json['fatherName'],
      lastName: json['lastName'],
      nationalNumber: Value<String?>(json['nationalNumber'] ?? ''), //
      motherName: Value<String?>(json['motherName'] ?? ''), //
      birthDate: Value<DateTime?>(
          DateFormat.yMd().tryParse(json['birthDate'].toString())),
      gender: Value<Gender?>(
          EnumMappers.toGender(int.parse(json['gender_code'].toString()))),

      aidRequired: Value<String?>(json['aidRequired_codes'] ?? ''),

      socialStatus: EnumMappers.toSocialStatus(
          int.parse(json['socialStatus_code'].toString())),
      contactNumber: Value<String?>(json['contactNumber']),

      // Medical-personal
      medicalStatus: Value<MedicalStatus?>(EnumMappers.toMedicalStatus(
          int.tryParse(json['medicalStatus_code'].toString()))),
      disabilityStatus: Value<DisabilityStatus?>(EnumMappers.toDisabilityStatus(
          int.tryParse(json['disabilityStatus_code'].toString()))),

      // Partner Section
      partnerName: Value<String?>(json['partnerName'] ?? ''),
      partnerNationalNum: Value<String?>(json['partnerNationalNum'] ?? ''),
      partnerBirthDate: Value<DateTime?>(
          DateFormat.yMd().tryParse(json['partnerBirthDate'].toString())),
      partnerPhoneNum: Value<String?>(json['partnerPhoneNum'] ?? ''),

      // Family Section
      familybookNumber: Value<String?>(json['familybookNumber'] ?? ''), //
      familyMembersNumber:
          Value<int?>(int.tryParse(json['familyMembersNumber'].toString())), //
      familyChildrenNumber:
          Value<int?>(int.tryParse(json['familyChildrenNumber'].toString())), //

      // // Medical-family
      familyHasMedicalStatus: Value<bool?>(
          bool.tryParse(json['familyHasMedicalStatus'].toString())),
      familyHasDisability:
          Value<bool?>(bool.tryParse(json['familyHasDisability'].toString())),

      // Residence
      originalResidenceType: Value<ResidenceType?>(EnumMappers.toResidenceType(
          int.tryParse(json['originalResidenceType_code'].toString()))),
      originalResidenceAddress:
          Value<String?>(json['originalResidenceAddress'] ?? ''),
      originalResidenceRegion: Value<String?>(ServiceLocator.villages
          .where((v) => v.code == json['originalResidenceRegion_code'])
          .firstOrNull
          ?.name),
      originalResidenceStatus: Value<ResidenceStatus?>(
          EnumMappers.toResidenceStatus(
              int.tryParse(json['originalResidenceStatus_code'].toString()))),
      currentResidenceRegion: Value<String?>(ServiceLocator.villages
          .where((v) => v.code == json['currentResidenceRegion_code'])
          .firstOrNull
          ?.name),
      currentResidenceAddress:
          Value<String?>(json['currentResidenceAddress'] ?? ''),
      currentResidenceType: Value<CurrentResidenceType?>(
          EnumMappers.toCurrentResidenceType(
              int.tryParse(json['currentResidenceType_code'].toString()))),

      // StudiesInformation Section
      acadimicLevel: Value<AcadimicLevel?>(EnumMappers.toAcadimicLevel(
          int.tryParse(json['acadimicLevel_code'].toString()))),
      certification: Value<String?>(json['certification'] ?? ""),
      studyAddress: Value<String?>(json['studyAddress'] ?? ''),

      // JobInformation
      jobType: Value<JobType?>(
          EnumMappers.toJobType(int.tryParse(json['jobType_code'].toString()))),
      monthlySalary: Value<String?>(json['monthlySalary'] ?? ""),
      jobDescription: Value<String?>(json['jobDescription'] ?? ''),

      // AUX
      notes: Value<String?>(json['notes'] ?? ''),
      // creationTime: Value<DateTime?>(
      //     DateFormat.yMd().tryParse(json['creationTime'].toString())),
      creationLocation: Value<String?>(json['creationLocation'] ?? ''),
    );
  }

  static BeneficiarysCompanion updateFromJson(Map<String, dynamic> json) =>
      BeneficiarysCompanion(
        id: Value<int>(json['id'] as int),
        // Personal
        firstName: Value<String>(json['firstName']),
        fatherName: Value<String>(json['fatherName']),
        lastName: Value<String>(json['lastName']),
        nationalNumber: Value<String?>(json['nationalNumber']), //
        motherName: Value<String?>(json['motherName']), //
        birthDate: Value<DateTime?>(
            DateFormat.yMd().tryParse(json['birthDate'].toString())),
        gender: Value<Gender?>(
            EnumMappers.toGender(int.parse(json['gender_code'].toString()))),

        aidRequired: Value<String?>(json['aidRequired_codes']),

        socialStatus: Value<SocialStatus>(EnumMappers.toSocialStatus(
            int.parse(json['socialStatus_code'].toString()))),
        contactNumber: Value<String?>(json['contactNumber']),

        // Medical-personal
        medicalStatus: Value<MedicalStatus?>(EnumMappers.toMedicalStatus(
            int.tryParse(json['medicalStatus_code'].toString()))),
        disabilityStatus: Value<DisabilityStatus?>(
            EnumMappers.toDisabilityStatus(
                int.tryParse(json['disabilityStatus_code'].toString()))),

        // Partner Section
        partnerName: Value<String?>(json['partnerName']),
        partnerNationalNum: Value<String?>(json['partnerNationalNum']),
        partnerBirthDate: Value<DateTime?>(
            DateFormat.yMd().tryParse(json['partnerBirthDate'].toString())),
        partnerPhoneNum: Value<String?>(json['partnerPhoneNum']),

        // Family Section
        familybookNumber: Value<String?>(json['familybookNumber']), //
        familyMembersNumber: Value<int?>(
            int.tryParse(json['familyMembersNumber'].toString())), //
        familyChildrenNumber: Value<int?>(
            int.tryParse(json['familyChildrenNumber'].toString())), //

        // // Medical-family
        familyHasMedicalStatus: Value<bool?>(
            bool.tryParse(json['familyHasMedicalStatus'].toString())),
        familyHasDisability:
            Value<bool?>(bool.tryParse(json['familyHasDisability'].toString())),

        // Residence
        originalResidenceType: Value<ResidenceType?>(
            EnumMappers.toResidenceType(
                int.tryParse(json['originalResidenceType_code'].toString()))),
        originalResidenceAddress:
            Value<String?>(json['originalResidenceAddress']),
        originalResidenceRegion: Value<String?>(ServiceLocator.villages
            .where((v) => v.code == json['originalResidenceRegion_code'])
            .firstOrNull
            ?.name),
        originalResidenceStatus: Value<ResidenceStatus?>(
            EnumMappers.toResidenceStatus(
                int.tryParse(json['originalResidenceStatus_code'].toString()))),
        currentResidenceRegion: Value<String?>(ServiceLocator.villages
            .where((v) => v.code == json['currentResidenceRegion_code'])
            .firstOrNull
            ?.name),
        currentResidenceAddress:
            Value<String?>(json['currentResidenceAddress']),
        currentResidenceType: Value<CurrentResidenceType?>(
            EnumMappers.toCurrentResidenceType(
                int.tryParse(json['currentResidenceType_code'].toString()))),

        // StudiesInformation Section
        acadimicLevel: Value<AcadimicLevel?>(EnumMappers.toAcadimicLevel(
            int.tryParse(json['acadimicLevel_code'].toString()))),
        certification: Value<String?>(json['certification']),
        studyAddress: Value<String?>(json['studyAddress']),

        // JobInformation
        jobType: Value<JobType?>(EnumMappers.toJobType(
            int.tryParse(json['jobType_code'].toString()))),
        monthlySalary: Value<String?>(json['monthlySalary']),
        jobDescription: Value<String?>(json['jobDescription']),

        // AUX
        notes: Value<String?>(json['notes']),
        // creationTime: Value<DateTime?>(
        //     DateFormat.yMd().tryParse(json['creationTime'].toString())),
        creationLocation: Value<String?>(json['creationLocation']),
      );
}
