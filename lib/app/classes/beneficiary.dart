import 'package:drift/drift.dart';
import 'package:excel/excel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'beneficiary.g.dart';

enum SocialStatus {
  single,
  married,
  divorced,
  widowed,
}

@JsonSerializable(explicitToJson: true)
class BeneficiaryEntity {
  final String firstName, fatherName, lastName;
  final String? nationalNumber;
  final String? familybookNumber;
  final SocialStatus socialStatus;
  final String? contactNumber;
  final String? partnerName;
  final int? familyMembersNumber;
  final Village? village; // @Deprecated
  final String? mainResidence;
  final String? currentResidence;
  final String? residenceType;
  final String? residenceStatus;
  final String? shelterName;
  final String? medicalStatus;
  final String? notes;

  String get fullName => "$firstName $fatherName $lastName";

  const BeneficiaryEntity({
    required this.firstName,
    required this.fatherName,
    required this.lastName,
    required this.nationalNumber,
    required this.familybookNumber,
    required this.socialStatus,
    required this.contactNumber,
    required this.partnerName,
    required this.familyMembersNumber,
    required this.village, // @Deprecated
    required this.mainResidence,
    required this.currentResidence,
    required this.residenceType,
    required this.residenceStatus,
    required this.shelterName,
    required this.medicalStatus,
    required this.notes,
  });

  factory BeneficiaryEntity.fromJson(Map<String, dynamic> json) =>
      _$BeneficiaryEntityFromJson(json);

  Map<String, dynamic> toJson() => _$BeneficiaryEntityToJson(this);

  List<TextCellValue> toExcelRow() =>
      toJson().values.map((v) => TextCellValue(v.toString())).toList();

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

  static JsonTypeConverter2<Village, String, Object> converter =
      TypeConverter.json(
    fromJson: (json) => Village.fromJson(json as Map<String, Object?>),
    toJson: (vill) => vill.toJson(),
  );
}
