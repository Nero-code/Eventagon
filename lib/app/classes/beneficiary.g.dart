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
      nationalNumber: json['nationalNumber'] as String?,
      familybookNumber: json['familybookNumber'] as String?,
      socialStatus: $enumDecode(_$SocialStatusEnumMap, json['socialStatus']),
      contactNumber: json['contactNumber'] as String?,
      partnerName: json['partnerName'] as String?,
      familyMembersNumber: (json['familyMembersNumber'] as num?)?.toInt(),
      village: json['village'] == null
          ? null
          : Village.fromJson(json['village'] as Map<String, dynamic>),
      mainResidence: json['mainResidence'] as String?,
      currentResidence: json['currentResidence'] as String?,
      residenceType: json['residenceType'] as String?,
      residenceStatus: json['residenceStatus'] as String?,
      shelterName: json['shelterName'] as String?,
      medicalStatus: json['medicalStatus'] as String?,
      notes: json['notes'] as String?,
    );

Map<String, dynamic> _$BeneficiaryEntityToJson(BeneficiaryEntity instance) =>
    <String, dynamic>{
      'firstName': instance.firstName,
      'fatherName': instance.fatherName,
      'lastName': instance.lastName,
      'nationalNumber': instance.nationalNumber,
      'familybookNumber': instance.familybookNumber,
      'socialStatus': _$SocialStatusEnumMap[instance.socialStatus]!,
      'contactNumber': instance.contactNumber,
      'partnerName': instance.partnerName,
      'familyMembersNumber': instance.familyMembersNumber,
      'village': instance.village?.toJson(),
      'mainResidence': instance.mainResidence,
      'currentResidence': instance.currentResidence,
      'residenceType': instance.residenceType,
      'residenceStatus': instance.residenceStatus,
      'shelterName': instance.shelterName,
      'medicalStatus': instance.medicalStatus,
      'notes': instance.notes,
    };

const _$SocialStatusEnumMap = {
  SocialStatus.single: 'single',
  SocialStatus.married: 'married',
  SocialStatus.divorced: 'divorced',
  SocialStatus.widowed: 'widowed',
};
