enum SocialStatus {
  single(1, 'single', 'عازب/ة'),
  married(2, 'married', 'متزوج/ة'),
  divorced(3, 'divorced', 'مطلق/ة'),
  widowed(4, 'widowed', 'ارمل/ة');

  final int code;
  final String enName, arName;

  const SocialStatus(this.code, this.enName, this.arName);
}

enum MedicalStatus {
  healthy(1, 'healthy', 'سليم'),
  minorOrSeasonalIllnesses(
      2, 'minorOrSeasonalIllnesses', 'أمراض بسيطة أو موسمية'),
  chronicDiseases(3, 'chronicDiseases', 'امراض مزمنة'),
  seriousDiseases(4, 'seriousDiseases', 'امراض خطيرة'),
  emergencyCondition(5, 'emergencyCondition', 'حالة طارئة');

  final int code;
  final String enName, arName;

  const MedicalStatus(this.code, this.enName, this.arName);
}

enum DisabilityStatus {
  healthy(1, 'healthy', 'سليم'),
  mildOrTemporaryDisability(
      2, 'mildOrTemporaryDisability', 'اعاقة بسيطة او مؤقتة'),
  moderateDisability(3, 'moderateDisability', 'اعاقة متوسطة'),
  severeDisability(4, 'severeDisability', 'اعاقة شديدة');

  final int code;
  final String enName, arName;

  const DisabilityStatus(this.code, this.enName, this.arName);
}

enum Gender {
  male(1, 'male', 'ذكر'),
  female(2, 'female', 'انثى');

  final int code;
  final String enName, arName;

  const Gender(this.code, this.enName, this.arName);
}

enum AidType {
  foodAid(1, 'foodAid', 'غذائية'),
  medicalAid(2, 'medicalAid', 'طبية'),
  educationalAid(3, 'educationalAid', 'تعليمية'),
  psychAid(4, 'psychAid', 'نفسية'),
  residenceAid(5, 'residenceAid', 'سكنية'),
  clothingAid(6, 'clothingAid', 'لباس'),
  financialAid(7, 'financialAid', 'مالية');

  final int code;
  final String enName, arName;

  const AidType(this.code, this.enName, this.arName);
}

enum ResidenceType {
  owned(1, 'owned', 'ملك'),
  rent(2, 'rent', 'اجار');

  final int code;
  final String enName, arName;

  const ResidenceType(this.code, this.enName, this.arName);
}

enum CurrentResidenceType {
  originalPlace(1, 'originalPlace', 'سكن اصلي'),
  shelter(2, 'shelter', 'مركز ايواء'),
  withRelative(3, 'withRelative', 'عند قريب'),
  temporary(4, 'temporary', 'مؤقت'),
  owned(5, 'owned', 'ملك'),
  rent(6, 'rent', 'اجار');

  final int code;
  final String enName, arName;

  const CurrentResidenceType(this.code, this.enName, this.arName);
}

enum ResidenceStatus {
  safeAndSuitableHousing(1, 'safeAndSuitableHousing', 'سكن سليم و مناسب'),
  minorRepairsNeeded(2, 'minorRepairsNeeded', 'بحاجة لصيانة'),
  uncomfortableOrCrowded(3, 'uncomfortableOrCrowded', 'غير مريح او مزدحم'),
  unsafeOrStructurallyUnstable(
      4, 'unsafeOrStructurallyUnstable', 'غير امن او مهدد بالانهيار'),
  destroyedOrUninhabitable(5, 'destroyedOrUninhabitable', 'مدمر او غير');

  final int code;
  final String enName, arName;

  const ResidenceStatus(this.code, this.enName, this.arName);
}

enum AcadimicLevel {
  primary(1, 'primary', 'ابتدائي'),
  preSecondary(2, 'preSecondary', 'اعدادي'),
  upperSecondary(3, 'upperSecondary', 'ثانوي'),
  higherEducation(4, 'higherEducation', 'تعليم عالي');

  final int code;
  final String enName, arName;

  const AcadimicLevel(this.code, this.enName, this.arName);
}

enum JobType {
  stableEmployment(1, 'stableEmployment', 'موظف دائم و مستقر'),
  temporaryJob(2, 'temporaryJob', 'موظف جزئي او مؤقت'),
  freelance(3, 'freelance', 'عمل حر او غير رسمي'),
  unemployedWithQualifications(
      4, 'unemployedWithQualifications', 'عاطل عن العمل مع مؤهلات'),
  unemployedWithoutQualifications(
      5, 'unemployedWithoutQualifications', 'عاطل عن العمل بدون مؤهلات');

  final int code;
  final String enName, arName;

  const JobType(this.code, this.enName, this.arName);
}
