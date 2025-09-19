import 'package:vollect/core/enums.dart';

abstract class EnumMappers {
  static SocialStatus toSocialStatus(int source) {
    return SocialStatus.values.firstWhere(
      (v) => v.code == source,
      orElse: () => SocialStatus.single,
    );
  }

  static Gender toGender(int source) {
    return Gender.values.firstWhere((v) => v.code == source);
  }

  static MedicalStatus? toMedicalStatus(int? source) {
    return MedicalStatus.values.where((v) => v.code == source).firstOrNull;
  }

  static DisabilityStatus toDisabilityStatus(int? source) {
    return DisabilityStatus.values.firstWhere(
      (v) => v.code == source,
      orElse: () => DisabilityStatus.healthy,
    );
  }

  static AidType? toAidType(int? source) {
    return AidType.values.where((v) => v.code == source).firstOrNull;
  }

  static ResidenceType? toResidenceType(int? source) {
    return ResidenceType.values.where((v) => v.code == source).firstOrNull;
  }

  static CurrentResidenceType? toCurrentResidenceType(int? source) {
    return CurrentResidenceType.values
        .where((v) => v.code == source)
        .firstOrNull;
  }

  static ResidenceStatus? toResidenceStatus(int? source) {
    return ResidenceStatus.values.where((v) => v.code == source).firstOrNull;
  }

  static AcadimicLevel? toAcadimicLevel(int? source) {
    return AcadimicLevel.values.where((v) => v.code == source).firstOrNull;
  }

  static JobType? toJobType(int? source) {
    return JobType.values.where((v) => v.code == source).firstOrNull;
  }
}
