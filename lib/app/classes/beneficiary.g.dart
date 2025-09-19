// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beneficiary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BeneficiaryEntity _$BeneficiaryEntityFromJson(Map<String, dynamic> json) =>
    BeneficiaryEntity(
      aidRequired: (json['aidRequired'] as List<dynamic>)
          .map((e) => $enumDecode(_$AidTypeEnumMap, e))
          .toList(),
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
      disabilityStatus:
          $enumDecode(_$DisabilityStatusEnumMap, json['disabilityStatus']),
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
      originalResidenceType: $enumDecodeNullable(
          _$ResidenceTypeEnumMap, json['originalResidenceType']),
      originalResidenceAddress: json['originalResidenceAddress'] as String?,
      originalResidenceRegion: json['originalResidenceRegion'] as String?,
      originalResidenceStatus: $enumDecode(
          _$ResidenceStatusEnumMap, json['originalResidenceStatus']),
      currentResidenceRegion: json['currentResidenceRegion'] as String?,
      currentResidenceAddress: json['currentResidenceAddress'] as String?,
      currentResidenceType: $enumDecodeNullable(
          _$CurrentResidenceTypeEnumMap, json['currentResidenceType']),
      acadimicLevel:
          $enumDecodeNullable(_$AcadimicLevelEnumMap, json['acadimicLevel']),
      certification: json['certification'] as String?,
      studyAddress: json['studyAddress'] as String?,
      jobType: $enumDecodeNullable(_$JobTypeEnumMap, json['jobType']),
      jobDescription: json['jobDescription'] as String?,
      monthlySalary: json['monthlySalary'] as String?,
      notes: json['notes'] as String?,
      creationTime: json['creationTime'] == null
          ? null
          : DateTime.parse(json['creationTime'] as String),
      creationLocation: json['creationLocation'] as String?,
    );

Map<String, dynamic> _$BeneficiaryEntityToJson(BeneficiaryEntity instance) =>
    <String, dynamic>{
      'aidRequired':
          instance.aidRequired.map((e) => _$AidTypeEnumMap[e]!).toList(),
      'firstName': instance.firstName,
      'fatherName': instance.fatherName,
      'lastName': instance.lastName,
      'motherName': instance.motherName,
      'nationalNumber': instance.nationalNumber,
      'contactNumber': instance.contactNumber,
      'gender': _$GenderEnumMap[instance.gender]!,
      'socialStatus': _$SocialStatusEnumMap[instance.socialStatus]!,
      'birthDate': instance.birthDate?.toIso8601String(),
      'medicalStatus': _$MedicalStatusEnumMap[instance.medicalStatus],
      'disabilityStatus': _$DisabilityStatusEnumMap[instance.disabilityStatus]!,
      'partnerName': instance.partnerName,
      'partnerNationalNum': instance.partnerNationalNum,
      'partnerPhoneNum': instance.partnerPhoneNum,
      'partnerBirthDate': instance.partnerBirthDate?.toIso8601String(),
      'familybookNumber': instance.familybookNumber,
      'familyMembersNumber': instance.familyMembersNumber,
      'familyChildrenNumber': instance.familyChildrenNumber,
      'familyHasMedicalStatus': instance.familyHasMedicalStatus,
      'familyHasDisability': instance.familyHasDisability,
      'originalResidenceRegion': instance.originalResidenceRegion,
      'currentResidenceRegion': instance.currentResidenceRegion,
      'originalResidenceAddress': instance.originalResidenceAddress,
      'currentResidenceAddress': instance.currentResidenceAddress,
      'originalResidenceStatus':
          _$ResidenceStatusEnumMap[instance.originalResidenceStatus]!,
      'originalResidenceType':
          _$ResidenceTypeEnumMap[instance.originalResidenceType],
      'currentResidenceType':
          _$CurrentResidenceTypeEnumMap[instance.currentResidenceType],
      'acadimicLevel': _$AcadimicLevelEnumMap[instance.acadimicLevel],
      'certification': instance.certification,
      'studyAddress': instance.studyAddress,
      'jobType': _$JobTypeEnumMap[instance.jobType],
      'monthlySalary': instance.monthlySalary,
      'jobDescription': instance.jobDescription,
      'notes': instance.notes,
      'creationTime': instance.creationTime?.toIso8601String(),
      'creationLocation': instance.creationLocation,
    };

const _$AidTypeEnumMap = {
  AidType.foodAid: 'foodAid',
  AidType.medicalAid: 'medicalAid',
  AidType.educationalAid: 'educationalAid',
  AidType.psychAid: 'psychAid',
  AidType.residenceAid: 'residenceAid',
  AidType.clothingAid: 'clothingAid',
  AidType.financialAid: 'financialAid',
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

const _$ResidenceTypeEnumMap = {
  ResidenceType.owned: 'owned',
  ResidenceType.rent: 'rent',
};

const _$ResidenceStatusEnumMap = {
  ResidenceStatus.safeAndSuitableHousing: 'safeAndSuitableHousing',
  ResidenceStatus.minorRepairsNeeded: 'minorRepairsNeeded',
  ResidenceStatus.uncomfortableOrCrowded: 'uncomfortableOrCrowded',
  ResidenceStatus.unsafeOrStructurallyUnstable: 'unsafeOrStructurallyUnstable',
  ResidenceStatus.destroyedOrUninhabitable: 'destroyedOrUninhabitable',
};

const _$CurrentResidenceTypeEnumMap = {
  CurrentResidenceType.originalPlace: 'originalPlace',
  CurrentResidenceType.shelter: 'shelter',
  CurrentResidenceType.withRelative: 'withRelative',
  CurrentResidenceType.temporary: 'temporary',
  CurrentResidenceType.owned: 'owned',
  CurrentResidenceType.rent: 'rent',
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
