import 'package:drift/drift.dart';
import 'package:vollect/app/classes/beneficiary.dart';

class Beneficiarys extends Table {
  late final id = integer().autoIncrement()();
  late final firstName = text()();
  late final fatherName = text()();
  late final lastName = text()();

  late final nationalNumber = text().nullable()();
  late final familybookNumber = text().nullable()();
  late final contactNumber = text().nullable()();
  late final partnerName = text().nullable()();
  late final mainResidence = text().nullable()();
  late final currentResidence = text().nullable()();
  late final residenceType = text().nullable()();
  late final residenceStatus = text().nullable()();
  late final shelterName = text().nullable()();
  late final medicalStatus = text().nullable()();
  late final notes = text().nullable()();

  late final createdAt = dateTime().nullable().clientDefault(DateTime.now)();

  late final socialStatus = textEnum<SocialStatus>()();
  late final familyMembersNumber = text().nullable()();
  // late final village = text().map(Village.converter).nullable()();

  // @override
  // Set<Column<Object>>? get primaryKey => {firstName, fatherName, lastName};
}
