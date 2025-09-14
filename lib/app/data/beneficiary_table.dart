import 'package:drift/drift.dart';
import 'package:vollect/core/enums.dart';

class Beneficiarys extends Table {
  late final id = integer().autoIncrement()();

  // Personal
  late final firstName = text()();
  late final fatherName = text()();
  late final lastName = text()();
  late final motherName = text().nullable()();
  late final nationalNumber = text().nullable()();
  late final gender = textEnum<Gender>().nullable()();
  late final socialStatus = textEnum<SocialStatus>()();
  late final birthDate = dateTime().nullable()();
  late final contactNumber = text().nullable()();

  // Medical-personal
  late final medicalStatus = textEnum<MedicalStatus>().nullable()();
  late final disabilityStatus = textEnum<DisabilityStatus>().nullable()();

  // Partner
  late final partnerName = text().nullable()();
  late final partnerNationalNum = text().nullable()();
  late final partnerPhoneNum = text().nullable()();
  late final partnerBirthDate = dateTime().nullable()();

  // Family
  late final familybookNumber = text().nullable()();
  late final familyMembersNumber = integer().nullable()();
  late final familyChildrenNumber = integer().nullable()();

  // Medical-family
  late final familyHasMedicalStatus = boolean().nullable()();
  late final familyHasDisability = boolean().nullable()();

  // Residence
  late final originalResidenceType = textEnum<ResidenceType>().nullable()();
  late final originalResidenceAddress = text().nullable()();
  late final originalResidenceRegion = text().nullable()();
  late final originalResidenceStatus = textEnum<ResidenceStatus>().nullable()();
  late final currentResidenceRegion = text().nullable()();
  late final currentResidenceAddress = text().nullable()();
  late final currentResidenceType =
      textEnum<CurrentResidenceType>().nullable()();

  // StudiesInformation Section
  late final acadimicLevel = textEnum<AcadimicLevel>().nullable()();
  late final certification = text().nullable()();
  late final studyAddress = text().nullable()();

  // JobInformation
  late final jobType = textEnum<JobType>().nullable()();
  late final jobDecription = text().nullable()();
  late final monthlySalary = text().nullable()();

  // AUX
  late final notes = text().nullable()();
  late final creationTime = dateTime().nullable().clientDefault(DateTime.now)();
  late final creationLocation = text().nullable()();
}
