import 'package:drift/drift.dart';
import 'package:vollect/core/enums.dart';

class Beneficiarys extends Table {
  late final id = integer().autoIncrement()();

  // Personal
  late final firstName = text()();
  late final fatherName = text()();
  late final lastName = text()();
  late final nationalNumber = text().nullable()();
  late final motherName = text().nullable()();
  late final contactNumber = text().nullable()();
  late final gender = textEnum<Gender>().nullable()();
  late final birthDate = dateTime().nullable()();
  // Medical-personal
  late final medicalStatus = text().nullable()();
  late final hasDisability = boolean().nullable()();

  // Family
  late final socialStatus = textEnum<SocialStatus>()();
  late final familybookNumber = text().nullable()();
  late final familyMembersNumber = text().nullable()();

  // Medical-family
  late final familyMedicalStatus = text().nullable()();
  late final familyHasDisability = boolean().nullable()();

  // Partner
  late final partnerName = text().nullable()();
  late final partnerNationalNum = text().nullable()();
  late final partnerBirthDate = dateTime().nullable()();
  late final partnerPhoneNum = text().nullable()();

  // Residence
  late final mainResidence = text().nullable()();
  late final currentResidence = text().nullable()();
  late final residenceType = text().nullable()();
  late final residenceStatus = text().nullable()();
  late final shelterName = text().nullable()();

  // AUX
  late final notes = text().nullable()();
  late final creationTime = dateTime().nullable().clientDefault(DateTime.now)();
  late final creationLocation = text().nullable()();
}
