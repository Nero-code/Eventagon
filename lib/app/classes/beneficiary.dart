import 'package:excel/excel.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:vollect/core/enums.dart';

part 'beneficiary.g.dart';

@JsonSerializable(explicitToJson: true)
class BeneficiaryEntity {
  final List<AidType> aidRequired;
  // Personal Section
  final String firstName;
  final String fatherName;
  final String lastName;
  final String? motherName;
  final String? nationalNumber;
  final String? contactNumber;
  final Gender gender;
  final SocialStatus socialStatus;
  final DateTime? birthDate;
  // Medical-personal Section
  final MedicalStatus? medicalStatus;
  final DisabilityStatus disabilityStatus;
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
  final String? originalResidenceRegion; //           region? "code # name"
  final String? currentResidenceRegion; //
  final String? originalResidenceAddress; //          his home address
  final String? currentResidenceAddress;
  final ResidenceStatus originalResidenceStatus; //   is it still standing?
  final ResidenceType? originalResidenceType; //      was he an owner?
  final CurrentResidenceType? currentResidenceType; //

  // StudiesInformation Section
  final AcadimicLevel? acadimicLevel;
  final String? certification;
  final String? studyAddress;

  // JobInformation
  final JobType? jobType;
  final String? monthlySalary;
  final String? jobDescription;

  // AUX
  final String? notes;
  final DateTime? creationTime;
  final String? creationLocation;

  String get fullName => "$firstName $fatherName $lastName";

  factory BeneficiaryEntity.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryEntityFromJson(json);

  const BeneficiaryEntity({
    required this.aidRequired,
    required this.firstName,
    required this.fatherName,
    required this.lastName,
    required this.motherName,
    required this.nationalNumber,
    required this.gender,
    required this.socialStatus,
    required this.birthDate,
    required this.contactNumber,
    required this.medicalStatus,
    required this.disabilityStatus,
    required this.partnerName,
    required this.partnerNationalNum,
    required this.partnerPhoneNum,
    required this.partnerBirthDate,
    required this.familybookNumber,
    required this.familyMembersNumber,
    required this.familyChildrenNumber,
    required this.familyHasMedicalStatus,
    required this.familyHasDisability,
    required this.originalResidenceType,
    required this.originalResidenceAddress,
    required this.originalResidenceRegion,
    required this.originalResidenceStatus,
    required this.currentResidenceRegion,
    required this.currentResidenceAddress,
    required this.currentResidenceType,
    required this.acadimicLevel,
    required this.certification,
    required this.studyAddress,
    required this.jobType,
    required this.jobDescription,
    required this.monthlySalary,
    required this.notes,
    required this.creationTime,
    required this.creationLocation,
  });

  Map<String, dynamic> toJson() => _$BeneficiaryEntityToJson(this);

  // List<TextCellValue> toExcelRow() =>
  //     toJson().values.map((v) => TextCellValue(v?.toString() ?? '')).toList();

  @Deprecated('This method doesn\'t support custom headers')
  List<TextCellValue> getExcelRowHeaders() =>
      toJson().keys.map((k) => TextCellValue(k)).toList();

  static List<TextCellValue> getExcelHeader() => [
        // Personal
        TextCellValue('firstName'),
        TextCellValue('fatherName'),
        TextCellValue('lastName'),
        TextCellValue('motherName'),
        TextCellValue('nationalNumber'),
        TextCellValue('gender_code'),
        TextCellValue('gender'),

        TextCellValue('aidRequired_codes'),
        TextCellValue('aidRequired'),

        TextCellValue('socialStatus_code'), // code
        TextCellValue('socialStatus'),
        TextCellValue('birthDate'),
        TextCellValue('contactNumber'),

        // p-m
        TextCellValue('medicalStatus_code'), // code
        TextCellValue('medicalStatus'),
        TextCellValue('disabilityStatus_code'), // code
        TextCellValue('disabilityStatus'),

        // partner
        TextCellValue('partnerName'),
        TextCellValue('partnerNationalNum'),
        TextCellValue('partnerPhoneNum'),
        TextCellValue('partnerBirthDate'),

        // family
        TextCellValue('familybookNumber'),
        TextCellValue('familyMembersNumber'),
        TextCellValue('familyChildrenNumber'),
        TextCellValue('familyHasMedicalStatus'),
        TextCellValue('familyHasDisability'),

        // residence
        TextCellValue('originalResidenceType_code'), // code
        TextCellValue('originalResidenceType'),
        TextCellValue('originalResidenceAddress'),
        TextCellValue('originalResidenceRegion_code'),
        TextCellValue('originalResidenceRegion'),
        TextCellValue('originalResidenceStatus_code'), // code
        TextCellValue('originalResidenceStatus'),
        TextCellValue('currentResidenceRegion_code'),
        TextCellValue('currentResidenceRegion'),
        TextCellValue('currentResidenceAddress'),
        TextCellValue('currentResidenceType_code'), // code
        TextCellValue('currentResidenceType'),

        TextCellValue('acadimicLevel_code'), // code
        TextCellValue('acadimicLevel'),
        TextCellValue('certification'),
        TextCellValue('studyAddress'),

        TextCellValue('jobType_code'), // code
        TextCellValue('jobType'),
        TextCellValue('jobDescription'),
        TextCellValue('monthlySalary'),

        TextCellValue('notes'),
        TextCellValue('creationTime'),
        TextCellValue('creationLocation'),
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
