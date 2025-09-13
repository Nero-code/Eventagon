import 'package:excel/excel.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vollect/core/enums.dart';

part 'beneficiary.g.dart';

// {
//     "PersonalInformation": {
//         "Id": "int",
//         "Name1": "string?",
//         "Name2": "string?",
//         "Name3": "string?",
//         "MotherName": "string?",
//         "Gender": "GenderType {  Male = 0, Female = 1 }",
//         "DateOfBirth": "date",
//         "NationalNumber": "string?",
//         "ContactNumber": "string?",
//         "SocialStatus": "SocialStatus { single, married, divorced, widowed }"
//     },
//     "JobInformation": {
//         "JobType": "JobType { StableEmployment = 1 , TemporaryJob = 2, Freelance = 3, UnemployedWithQualifications = 4, UnemployedWithoutQualifications = 5 }",
//         "JobDecription": "string?",
//         "MonthlySalary": "string?"
//     },
//     "StudiesInformation": {
//         "AcadimicLevel": "AcadimicLevel { Primary = 0, PreSecondary = 1, UpperSecondary = 2, HigherEducation = 3 }",
//         "Certification": "string?",
//         "StudyAddress": "string?"
//     },
//     "ResidenceInformation": {
//         "OriginalResidenceType": "ResidenceType { Owend = 0, Rent = 1 }",
//         "OriginalResidenceAddress": "string?",
//         "OriginalResidenceRegion": "Region? / Village?"
//         "OriginalResidenceStatus": "ResidenceStatus { SafeAndSuitableHousing = 1, MinorRepairsNeeded = 2, UncomfortableOrCrowded = 3, UnsafeOrStructurallyUnstable = 4, DestroyedOrUninhabitable= 5 }",
//         "CurrentResidenceRegion": "Region? / Village?"
//         "CurrentResidenceType": "CurrentResidence { OriginalPlace = 1 , Shelter = 2, WithRelative = 3, Temporary = 4 }",
//         "CurrentResidenceAddress": "string?",
//     },
//     "FamilyInformation": {
//         "FamilyBookNumber": "string?",
//         "FamilyMemberCount": "int",
//         "ChildernCount": "int"
//     },
//     "MedicalInformation": {
//         "MediaclStatus": "MedicalStatus { Healthy = 1, MinorOrSeasonalIllnesses = 2, ChronicDiseases = 3, SeriousDiseases = 4, EmergencyCondition = 5 }",
//         "DisabilityStatus": "DisabilityStatus { Healthy = 1, MildOrTemporaryDisability = 2, ModerateDisability = 3, SevereDisability = 4 }"
//     }
// }

@JsonSerializable(explicitToJson: true)
class BeneficiaryEntity {
  // Personal Section
  final String firstName;
  final String fatherName;
  final String lastName;
  final String? motherName;
  final String? nationalNumber;
  final Gender gender;
  final SocialStatus socialStatus;
  final DateTime? birthDate;
  final String? contactNumber;

  // Medical-personal Section
  final MedicalStatus? medicalStatus;
  final DisabilityStatus hasDisability;

  // Partner Section
  final String? partnerName;
  final String? partnerNationalNum;
  final String? partnerPhoneNum;
  final DateTime? partnerBirthDate;

  // Family Section
  final String? familybookNumber;
  final int? familyMembersNumber;
  final int? familyChildrenNumber;

  // Medical-family Section
  final bool? familyHasMedicalStatus;
  final bool? familyHasDisability;

  // Residence Section
  final String? mainResidence;
  final String? currentResidence;
  final String? residenceType;
  final String? residenceStatus;
  final String? shelterName;

  // StudiesInformation Section
  final AcadimicLevel? acadimicLevel;
  final String? certification;
  final String? studyAddress;

  // JobInformation
  final JobType? jobType;
  final String? jobDecription;
  final String? monthlySalary;

  // AUX
  final String? notes;
  final DateTime? creationTime;
  final String? creationLocation;

  String get fullName => "$firstName $fatherName $lastName";

  factory BeneficiaryEntity.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryEntityFromJson(json);

  const BeneficiaryEntity({
    // Personal Section
    required this.firstName,
    required this.fatherName,
    required this.lastName,
    required this.motherName,
    required this.nationalNumber,
    required this.gender,
    required this.socialStatus,
    required this.birthDate,
    required this.contactNumber,

    // Medical-personal Section
    required this.medicalStatus,
    required this.hasDisability,

    // Partner Section
    required this.partnerName,
    required this.partnerNationalNum,
    required this.partnerPhoneNum,
    required this.partnerBirthDate,

    // Family Section
    required this.familybookNumber,
    required this.familyMembersNumber,
    required this.familyChildrenNumber,

    // Medical-family Section
    required this.familyHasMedicalStatus,
    required this.familyHasDisability,

    // Residence Section
    required this.mainResidence,
    required this.currentResidence,
    required this.residenceType,
    required this.residenceStatus,
    required this.shelterName,

    // StudiesInformation Section
    required this.acadimicLevel,
    required this.certification,
    required this.studyAddress,

    // JobInformation
    required this.jobType,
    required this.jobDecription,
    required this.monthlySalary,

    // AUX
    required this.notes,
    required this.creationTime,
    required this.creationLocation,
  });

  Map<String, dynamic> toJson() => _$BeneficiaryEntityToJson(this);

  List<TextCellValue> toExcelRow() =>
      toJson().values.map((v) => TextCellValue(v?.toString() ?? '')).toList();

  static List<TextCellValue> getExcelHeader() => [
        TextCellValue('firstName'),
        TextCellValue('fatherName'),
        TextCellValue('lastName'),
        TextCellValue('nationalNumber'),
        TextCellValue('familybookNumber'),
        TextCellValue('socialStatus'),
        TextCellValue('contactNumber'),
        TextCellValue('partnerName'),
        TextCellValue('familyMembersNumber'),
        TextCellValue('mainResidence'),
        TextCellValue('currentResidence'),
        TextCellValue('residenceType'),
        TextCellValue('residenceStatus'),
        TextCellValue('shelterName'),
        TextCellValue('medicalStatus'),
        TextCellValue('notes'),
        TextCellValue('createdAt'),
      ];
}

class Village {
  final String code;
  final String name;

  const Village({required this.code, required this.name});

  factory Village.fromJson(Map<String, dynamic> json) =>
      Village(code: json['Code'], name: json['Name']);
  Map<String, dynamic> toJson() => {"Code": code, "Name": name};

  String serialize() => '$code # $name';

  // static JsonTypeConverter2<Village, String, Object> converter =
  //     TypeConverter.json(
  //   fromJson: (json) => Village.fromJson(json as Map<String, Object?>),
  //   toJson: (vill) => vill.toJson(),
  // );
}
