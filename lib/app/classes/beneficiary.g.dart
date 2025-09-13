// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BeneficiaryEntity _$BeneficiaryEntityFromJson(Map<String, dynamic> json) =>
    BeneficiaryEntity(
      firstName: json['firstName'] as String,
      fatherName: json['fatherName'] as String,
      lastName: json['lastName'] as String,
      motherName: json['motherName'] as String?,
      nationalNumber: json['nationalNumber'] as String?,
      gender: $enumDecode(_$GenderEnumMap, json['gender']),
      socialStatus: $enumDecode(_$SocialStatusEnumMap, json['socialStatus']),
      birthDate: json['birthDate'] == null
          ? null
          : DateTime.parse(json['birthDate'] as String),
      contactNumber: json['contactNumber'] as String?,
      medicalStatus:
          $enumDecodeNullable(_$MedicalStatusEnumMap, json['medicalStatus']),
      hasDisability:
          $enumDecode(_$DisabilityStatusEnumMap, json['hasDisability']),
      partnerName: json['partnerName'] as String?,
      partnerNationalNum: json['partnerNationalNum'] as String?,
      partnerPhoneNum: json['partnerPhoneNum'] as String?,
      partnerBirthDate: json['partnerBirthDate'] == null
          ? null
          : DateTime.parse(json['partnerBirthDate'] as String),
      familybookNumber: json['familybookNumber'] as String?,
      familyMembersNumber: (json['familyMembersNumber'] as num?)?.toInt(),
      familyChildrenNumber: (json['familyChildrenNumber'] as num?)?.toInt(),
      familyHasMedicalStatus: json['familyHasMedicalStatus'] as bool?,
      familyHasDisability: json['familyHasDisability'] as bool?,
      mainResidence: json['mainResidence'] as String?,
      currentResidence: json['currentResidence'] as String?,
      residenceType: json['residenceType'] as String?,
      residenceStatus: json['residenceStatus'] as String?,
      shelterName: json['shelterName'] as String?,
      acadimicLevel:
          $enumDecodeNullable(_$AcadimicLevelEnumMap, json['acadimicLevel']),
      certification: json['certification'] as String?,
      studyAddress: json['studyAddress'] as String?,
      jobType: $enumDecodeNullable(_$JobTypeEnumMap, json['jobType']),
      jobDecription: json['jobDecription'] as String?,
      monthlySalary: json['monthlySalary'] as String?,
      notes: json['notes'] as String?,
      creationTime: json['creationTime'] == null
          ? null
          : DateTime.parse(json['creationTime'] as String),
      creationLocation: json['creationLocation'] as String?,
    );

Map<String, dynamic> _$BeneficiaryEntityToJson(BeneficiaryEntity instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'fatherName': instance.fatherName,
      'lastName': instance.lastName,
      'motherName': instance.motherName,
      'nationalNumber': instance.nationalNumber,
      'gender': _$GenderEnumMap[instance.gender]!,
      'socialStatus': _$SocialStatusEnumMap[instance.socialStatus]!,
      'birthDate': instance.birthDate?.toIso8601String(),
      'contactNumber': instance.contactNumber,
      'medicalStatus': _$MedicalStatusEnumMap[instance.medicalStatus],
      'hasDisability': _$DisabilityStatusEnumMap[instance.hasDisability]!,
      'partnerName': instance.partnerName,
      'partnerNationalNum': instance.partnerNationalNum,
      'partnerPhoneNum': instance.partnerPhoneNum,
      'partnerBirthDate': instance.partnerBirthDate?.toIso8601String(),
      'familybookNumber': instance.familybookNumber,
      'familyMembersNumber': instance.familyMembersNumber,
      'familyChildrenNumber': instance.familyChildrenNumber,
      'familyHasMedicalStatus': instance.familyHasMedicalStatus,
      'familyHasDisability': instance.familyHasDisability,
      'mainResidence': instance.mainResidence,
      'currentResidence': instance.currentResidence,
      'residenceType': instance.residenceType,
      'residenceStatus': instance.residenceStatus,
      'shelterName': instance.shelterName,
      'acadimicLevel': _$AcadimicLevelEnumMap[instance.acadimicLevel],
      'certification': instance.certification,
      'studyAddress': instance.studyAddress,
      'jobType': _$JobTypeEnumMap[instance.jobType],
      'jobDecription': instance.jobDecription,
      'monthlySalary': instance.monthlySalary,
      'notes': instance.notes,
      'creationTime': instance.creationTime?.toIso8601String(),
      'creationLocation': instance.creationLocation,
    };

const _$GenderEnumMap = {
  Gender.male: 'male',
  Gender.female: 'female',
};

const _$SocialStatusEnumMap = {
  SocialStatus.single: 'single',
  SocialStatus.married: 'married',
  SocialStatus.divorced: 'divorced',
  SocialStatus.widowed: 'widowed',
};

const _$MedicalStatusEnumMap = {
  MedicalStatus.healthy: 'healthy',
  MedicalStatus.minorOrSeasonalIllnesses: 'minorOrSeasonalIllnesses',
  MedicalStatus.chronicDiseases: 'chronicDiseases',
  MedicalStatus.seriousDiseases: 'seriousDiseases',
  MedicalStatus.emergencyCondition: 'emergencyCondition',
};

const _$DisabilityStatusEnumMap = {
  DisabilityStatus.healthy: 'healthy',
  DisabilityStatus.mildOrTemporaryDisability: 'mildOrTemporaryDisability',
  DisabilityStatus.moderateDisability: 'moderateDisability',
  DisabilityStatus.severeDisability: 'severeDisability',
};

const _$AcadimicLevelEnumMap = {
  AcadimicLevel.primary: 'primary',
  AcadimicLevel.preSecondary: 'preSecondary',
  AcadimicLevel.upperSecondary: 'upperSecondary',
  AcadimicLevel.higherEducation: 'higherEducation',
};

const _$JobTypeEnumMap = {
  JobType.stableEmployment: 'stableEmployment',
  JobType.temporaryJob: 'temporaryJob',
  JobType.freelance: 'freelance',
  JobType.unemployedWithQualifications: 'unemployedWithQualifications',
  JobType.unemployedWithoutQualifications: 'unemployedWithoutQualifications',
};
