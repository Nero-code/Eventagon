import 'package:vollect/core/enums.dart';

abstract class EnumMappers {
  static SocialStatus? toSocialStatus(String source) {
    return SocialStatus.values
        .where((v) => v.code == int.tryParse(source))
        .firstOrNull;
  }

  static MedicalStatus? toMedicalStatus(String source) {
    return MedicalStatus.values
        .where((v) => v.code == int.tryParse(source))
        .firstOrNull;
  }

  static DisabilityStatus? toDisabilityStatus(String source) {
    return DisabilityStatus.values
        .where((v) => v.code == int.tryParse(source))
        .firstOrNull;
  }

  static Gender? toGender(String source) {
    return Gender.values
        .where((v) => v.code == int.tryParse(source))
        .firstOrNull;
  }

  static AidType? toAidType(String source) {
    return AidType.values
        .where((v) => v.code == int.tryParse(source))
        .firstOrNull;
  }

  static ResidenceType? toResidenceType(String source) {
    return ResidenceType.values
        .where((v) => v.code == int.tryParse(source))
        .firstOrNull;
  }

  static CurrentResidenceType? toCurrentResidenceType(String source) {
    return CurrentResidenceType.values
        .where((v) => v.code == int.tryParse(source))
        .firstOrNull;
  }

  static ResidenceStatus? toResidenceStatus(String source) {
    return ResidenceStatus.values
        .where((v) => v.code == int.tryParse(source))
        .firstOrNull;
  }

  static AcadimicLevel? toAcadimicLevel(String source) {
    return AcadimicLevel.values
        .where((v) => v.code == int.tryParse(source))
        .firstOrNull;
  }

  static JobType? toJobType(String source) {
    return JobType.values
        .where((v) => v.code == int.tryParse(source))
        .firstOrNull;
  }
}
