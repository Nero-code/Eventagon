// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $BeneficiarysTable extends Beneficiarys
    with TableInfo<$BeneficiarysTable, Beneficiary> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $BeneficiarysTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _aidRequiredMeta =
      const VerificationMeta('aidRequired');
  @override
  late final GeneratedColumn<String> aidRequired = GeneratedColumn<String>(
      'aid_required', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _firstNameMeta =
      const VerificationMeta('firstName');
  @override
  late final GeneratedColumn<String> firstName = GeneratedColumn<String>(
      'first_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _fatherNameMeta =
      const VerificationMeta('fatherName');
  @override
  late final GeneratedColumn<String> fatherName = GeneratedColumn<String>(
      'father_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _lastNameMeta =
      const VerificationMeta('lastName');
  @override
  late final GeneratedColumn<String> lastName = GeneratedColumn<String>(
      'last_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _motherNameMeta =
      const VerificationMeta('motherName');
  @override
  late final GeneratedColumn<String> motherName = GeneratedColumn<String>(
      'mother_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _nationalNumberMeta =
      const VerificationMeta('nationalNumber');
  @override
  late final GeneratedColumn<String> nationalNumber = GeneratedColumn<String>(
      'national_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumnWithTypeConverter<Gender?, String> gender =
      GeneratedColumn<String>('gender', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<Gender?>($BeneficiarysTable.$convertergendern);
  static const VerificationMeta _socialStatusMeta =
      const VerificationMeta('socialStatus');
  @override
  late final GeneratedColumnWithTypeConverter<SocialStatus, String>
      socialStatus = GeneratedColumn<String>(
              'social_status', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<SocialStatus>(
              $BeneficiarysTable.$convertersocialStatus);
  static const VerificationMeta _birthDateMeta =
      const VerificationMeta('birthDate');
  @override
  late final GeneratedColumn<DateTime> birthDate = GeneratedColumn<DateTime>(
      'birth_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _contactNumberMeta =
      const VerificationMeta('contactNumber');
  @override
  late final GeneratedColumn<String> contactNumber = GeneratedColumn<String>(
      'contact_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _medicalStatusMeta =
      const VerificationMeta('medicalStatus');
  @override
  late final GeneratedColumnWithTypeConverter<MedicalStatus?, String>
      medicalStatus = GeneratedColumn<String>(
              'medical_status', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<MedicalStatus?>(
              $BeneficiarysTable.$convertermedicalStatusn);
  static const VerificationMeta _disabilityStatusMeta =
      const VerificationMeta('disabilityStatus');
  @override
  late final GeneratedColumnWithTypeConverter<DisabilityStatus?, String>
      disabilityStatus = GeneratedColumn<String>(
              'disability_status', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<DisabilityStatus?>(
              $BeneficiarysTable.$converterdisabilityStatusn);
  static const VerificationMeta _partnerNameMeta =
      const VerificationMeta('partnerName');
  @override
  late final GeneratedColumn<String> partnerName = GeneratedColumn<String>(
      'partner_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _partnerNationalNumMeta =
      const VerificationMeta('partnerNationalNum');
  @override
  late final GeneratedColumn<String> partnerNationalNum =
      GeneratedColumn<String>('partner_national_num', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _partnerPhoneNumMeta =
      const VerificationMeta('partnerPhoneNum');
  @override
  late final GeneratedColumn<String> partnerPhoneNum = GeneratedColumn<String>(
      'partner_phone_num', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _partnerBirthDateMeta =
      const VerificationMeta('partnerBirthDate');
  @override
  late final GeneratedColumn<DateTime> partnerBirthDate =
      GeneratedColumn<DateTime>('partner_birth_date', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _familybookNumberMeta =
      const VerificationMeta('familybookNumber');
  @override
  late final GeneratedColumn<String> familybookNumber = GeneratedColumn<String>(
      'familybook_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _familyMembersNumberMeta =
      const VerificationMeta('familyMembersNumber');
  @override
  late final GeneratedColumn<int> familyMembersNumber = GeneratedColumn<int>(
      'family_members_number', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _familyChildrenNumberMeta =
      const VerificationMeta('familyChildrenNumber');
  @override
  late final GeneratedColumn<int> familyChildrenNumber = GeneratedColumn<int>(
      'family_children_number', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _familyHasMedicalStatusMeta =
      const VerificationMeta('familyHasMedicalStatus');
  @override
  late final GeneratedColumn<bool> familyHasMedicalStatus =
      GeneratedColumn<bool>('family_has_medical_status', aliasedName, true,
          type: DriftSqlType.bool,
          requiredDuringInsert: false,
          defaultConstraints: GeneratedColumn.constraintIsAlways(
              'CHECK ("family_has_medical_status" IN (0, 1))'));
  static const VerificationMeta _familyHasDisabilityMeta =
      const VerificationMeta('familyHasDisability');
  @override
  late final GeneratedColumn<bool> familyHasDisability = GeneratedColumn<bool>(
      'family_has_disability', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("family_has_disability" IN (0, 1))'));
  static const VerificationMeta _originalResidenceTypeMeta =
      const VerificationMeta('originalResidenceType');
  @override
  late final GeneratedColumnWithTypeConverter<ResidenceType?, String>
      originalResidenceType = GeneratedColumn<String>(
              'original_residence_type', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<ResidenceType?>(
              $BeneficiarysTable.$converteroriginalResidenceTypen);
  static const VerificationMeta _originalResidenceAddressMeta =
      const VerificationMeta('originalResidenceAddress');
  @override
  late final GeneratedColumn<String> originalResidenceAddress =
      GeneratedColumn<String>('original_residence_address', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _originalResidenceRegionMeta =
      const VerificationMeta('originalResidenceRegion');
  @override
  late final GeneratedColumn<String> originalResidenceRegion =
      GeneratedColumn<String>('original_residence_region', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _originalResidenceStatusMeta =
      const VerificationMeta('originalResidenceStatus');
  @override
  late final GeneratedColumnWithTypeConverter<ResidenceStatus?, String>
      originalResidenceStatus = GeneratedColumn<String>(
              'original_residence_status', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<ResidenceStatus?>(
              $BeneficiarysTable.$converteroriginalResidenceStatusn);
  static const VerificationMeta _currentResidenceRegionMeta =
      const VerificationMeta('currentResidenceRegion');
  @override
  late final GeneratedColumn<String> currentResidenceRegion =
      GeneratedColumn<String>('current_residence_region', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _currentResidenceAddressMeta =
      const VerificationMeta('currentResidenceAddress');
  @override
  late final GeneratedColumn<String> currentResidenceAddress =
      GeneratedColumn<String>('current_residence_address', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _currentResidenceTypeMeta =
      const VerificationMeta('currentResidenceType');
  @override
  late final GeneratedColumnWithTypeConverter<CurrentResidenceType?, String>
      currentResidenceType = GeneratedColumn<String>(
              'current_residence_type', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<CurrentResidenceType?>(
              $BeneficiarysTable.$convertercurrentResidenceTypen);
  static const VerificationMeta _acadimicLevelMeta =
      const VerificationMeta('acadimicLevel');
  @override
  late final GeneratedColumnWithTypeConverter<AcadimicLevel?, String>
      acadimicLevel = GeneratedColumn<String>(
              'acadimic_level', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<AcadimicLevel?>(
              $BeneficiarysTable.$converteracadimicLeveln);
  static const VerificationMeta _certificationMeta =
      const VerificationMeta('certification');
  @override
  late final GeneratedColumn<String> certification = GeneratedColumn<String>(
      'certification', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _studyAddressMeta =
      const VerificationMeta('studyAddress');
  @override
  late final GeneratedColumn<String> studyAddress = GeneratedColumn<String>(
      'study_address', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _jobTypeMeta =
      const VerificationMeta('jobType');
  @override
  late final GeneratedColumnWithTypeConverter<JobType?, String> jobType =
      GeneratedColumn<String>('job_type', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<JobType?>($BeneficiarysTable.$converterjobTypen);
  static const VerificationMeta _jobDescriptionMeta =
      const VerificationMeta('jobDescription');
  @override
  late final GeneratedColumn<String> jobDescription = GeneratedColumn<String>(
      'job_description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _monthlySalaryMeta =
      const VerificationMeta('monthlySalary');
  @override
  late final GeneratedColumn<String> monthlySalary = GeneratedColumn<String>(
      'monthly_salary', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _creationTimeMeta =
      const VerificationMeta('creationTime');
  @override
  late final GeneratedColumn<DateTime> creationTime = GeneratedColumn<DateTime>(
      'creation_time', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      clientDefault: DateTime.now);
  static const VerificationMeta _creationLocationMeta =
      const VerificationMeta('creationLocation');
  @override
  late final GeneratedColumn<String> creationLocation = GeneratedColumn<String>(
      'creation_location', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        aidRequired,
        firstName,
        fatherName,
        lastName,
        motherName,
        nationalNumber,
        gender,
        socialStatus,
        birthDate,
        contactNumber,
        medicalStatus,
        disabilityStatus,
        partnerName,
        partnerNationalNum,
        partnerPhoneNum,
        partnerBirthDate,
        familybookNumber,
        familyMembersNumber,
        familyChildrenNumber,
        familyHasMedicalStatus,
        familyHasDisability,
        originalResidenceType,
        originalResidenceAddress,
        originalResidenceRegion,
        originalResidenceStatus,
        currentResidenceRegion,
        currentResidenceAddress,
        currentResidenceType,
        acadimicLevel,
        certification,
        studyAddress,
        jobType,
        jobDescription,
        monthlySalary,
        notes,
        creationTime,
        creationLocation
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'beneficiarys';
  @override
  VerificationContext validateIntegrity(Insertable<Beneficiary> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('aid_required')) {
      context.handle(
          _aidRequiredMeta,
          aidRequired.isAcceptableOrUnknown(
              data['aid_required']!, _aidRequiredMeta));
    }
    if (data.containsKey('first_name')) {
      context.handle(_firstNameMeta,
          firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta));
    } else if (isInserting) {
      context.missing(_firstNameMeta);
    }
    if (data.containsKey('father_name')) {
      context.handle(
          _fatherNameMeta,
          fatherName.isAcceptableOrUnknown(
              data['father_name']!, _fatherNameMeta));
    } else if (isInserting) {
      context.missing(_fatherNameMeta);
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta));
    } else if (isInserting) {
      context.missing(_lastNameMeta);
    }
    if (data.containsKey('mother_name')) {
      context.handle(
          _motherNameMeta,
          motherName.isAcceptableOrUnknown(
              data['mother_name']!, _motherNameMeta));
    }
    if (data.containsKey('national_number')) {
      context.handle(
          _nationalNumberMeta,
          nationalNumber.isAcceptableOrUnknown(
              data['national_number']!, _nationalNumberMeta));
    }
    context.handle(_genderMeta, const VerificationResult.success());
    context.handle(_socialStatusMeta, const VerificationResult.success());
    if (data.containsKey('birth_date')) {
      context.handle(_birthDateMeta,
          birthDate.isAcceptableOrUnknown(data['birth_date']!, _birthDateMeta));
    }
    if (data.containsKey('contact_number')) {
      context.handle(
          _contactNumberMeta,
          contactNumber.isAcceptableOrUnknown(
              data['contact_number']!, _contactNumberMeta));
    }
    context.handle(_medicalStatusMeta, const VerificationResult.success());
    context.handle(_disabilityStatusMeta, const VerificationResult.success());
    if (data.containsKey('partner_name')) {
      context.handle(
          _partnerNameMeta,
          partnerName.isAcceptableOrUnknown(
              data['partner_name']!, _partnerNameMeta));
    }
    if (data.containsKey('partner_national_num')) {
      context.handle(
          _partnerNationalNumMeta,
          partnerNationalNum.isAcceptableOrUnknown(
              data['partner_national_num']!, _partnerNationalNumMeta));
    }
    if (data.containsKey('partner_phone_num')) {
      context.handle(
          _partnerPhoneNumMeta,
          partnerPhoneNum.isAcceptableOrUnknown(
              data['partner_phone_num']!, _partnerPhoneNumMeta));
    }
    if (data.containsKey('partner_birth_date')) {
      context.handle(
          _partnerBirthDateMeta,
          partnerBirthDate.isAcceptableOrUnknown(
              data['partner_birth_date']!, _partnerBirthDateMeta));
    }
    if (data.containsKey('familybook_number')) {
      context.handle(
          _familybookNumberMeta,
          familybookNumber.isAcceptableOrUnknown(
              data['familybook_number']!, _familybookNumberMeta));
    }
    if (data.containsKey('family_members_number')) {
      context.handle(
          _familyMembersNumberMeta,
          familyMembersNumber.isAcceptableOrUnknown(
              data['family_members_number']!, _familyMembersNumberMeta));
    }
    if (data.containsKey('family_children_number')) {
      context.handle(
          _familyChildrenNumberMeta,
          familyChildrenNumber.isAcceptableOrUnknown(
              data['family_children_number']!, _familyChildrenNumberMeta));
    }
    if (data.containsKey('family_has_medical_status')) {
      context.handle(
          _familyHasMedicalStatusMeta,
          familyHasMedicalStatus.isAcceptableOrUnknown(
              data['family_has_medical_status']!, _familyHasMedicalStatusMeta));
    }
    if (data.containsKey('family_has_disability')) {
      context.handle(
          _familyHasDisabilityMeta,
          familyHasDisability.isAcceptableOrUnknown(
              data['family_has_disability']!, _familyHasDisabilityMeta));
    }
    context.handle(
        _originalResidenceTypeMeta, const VerificationResult.success());
    if (data.containsKey('original_residence_address')) {
      context.handle(
          _originalResidenceAddressMeta,
          originalResidenceAddress.isAcceptableOrUnknown(
              data['original_residence_address']!,
              _originalResidenceAddressMeta));
    }
    if (data.containsKey('original_residence_region')) {
      context.handle(
          _originalResidenceRegionMeta,
          originalResidenceRegion.isAcceptableOrUnknown(
              data['original_residence_region']!,
              _originalResidenceRegionMeta));
    }
    context.handle(
        _originalResidenceStatusMeta, const VerificationResult.success());
    if (data.containsKey('current_residence_region')) {
      context.handle(
          _currentResidenceRegionMeta,
          currentResidenceRegion.isAcceptableOrUnknown(
              data['current_residence_region']!, _currentResidenceRegionMeta));
    }
    if (data.containsKey('current_residence_address')) {
      context.handle(
          _currentResidenceAddressMeta,
          currentResidenceAddress.isAcceptableOrUnknown(
              data['current_residence_address']!,
              _currentResidenceAddressMeta));
    }
    context.handle(
        _currentResidenceTypeMeta, const VerificationResult.success());
    context.handle(_acadimicLevelMeta, const VerificationResult.success());
    if (data.containsKey('certification')) {
      context.handle(
          _certificationMeta,
          certification.isAcceptableOrUnknown(
              data['certification']!, _certificationMeta));
    }
    if (data.containsKey('study_address')) {
      context.handle(
          _studyAddressMeta,
          studyAddress.isAcceptableOrUnknown(
              data['study_address']!, _studyAddressMeta));
    }
    context.handle(_jobTypeMeta, const VerificationResult.success());
    if (data.containsKey('job_description')) {
      context.handle(
          _jobDescriptionMeta,
          jobDescription.isAcceptableOrUnknown(
              data['job_description']!, _jobDescriptionMeta));
    }
    if (data.containsKey('monthly_salary')) {
      context.handle(
          _monthlySalaryMeta,
          monthlySalary.isAcceptableOrUnknown(
              data['monthly_salary']!, _monthlySalaryMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('creation_time')) {
      context.handle(
          _creationTimeMeta,
          creationTime.isAcceptableOrUnknown(
              data['creation_time']!, _creationTimeMeta));
    }
    if (data.containsKey('creation_location')) {
      context.handle(
          _creationLocationMeta,
          creationLocation.isAcceptableOrUnknown(
              data['creation_location']!, _creationLocationMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Beneficiary map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Beneficiary(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      aidRequired: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}aid_required']),
      firstName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}first_name'])!,
      fatherName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}father_name'])!,
      lastName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}last_name'])!,
      motherName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mother_name']),
      nationalNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}national_number']),
      gender: $BeneficiarysTable.$convertergendern.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gender'])),
      socialStatus: $BeneficiarysTable.$convertersocialStatus.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}social_status'])!),
      birthDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}birth_date']),
      contactNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}contact_number']),
      medicalStatus: $BeneficiarysTable.$convertermedicalStatusn.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}medical_status'])),
      disabilityStatus: $BeneficiarysTable.$converterdisabilityStatusn.fromSql(
          attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}disability_status'])),
      partnerName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}partner_name']),
      partnerNationalNum: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}partner_national_num']),
      partnerPhoneNum: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}partner_phone_num']),
      partnerBirthDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}partner_birth_date']),
      familybookNumber: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}familybook_number']),
      familyMembersNumber: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}family_members_number']),
      familyChildrenNumber: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}family_children_number']),
      familyHasMedicalStatus: attachedDatabase.typeMapping.read(
          DriftSqlType.bool,
          data['${effectivePrefix}family_has_medical_status']),
      familyHasDisability: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}family_has_disability']),
      originalResidenceType: $BeneficiarysTable.$converteroriginalResidenceTypen
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}original_residence_type'])),
      originalResidenceAddress: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}original_residence_address']),
      originalResidenceRegion: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}original_residence_region']),
      originalResidenceStatus: $BeneficiarysTable
          .$converteroriginalResidenceStatusn
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}original_residence_status'])),
      currentResidenceRegion: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}current_residence_region']),
      currentResidenceAddress: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}current_residence_address']),
      currentResidenceType: $BeneficiarysTable.$convertercurrentResidenceTypen
          .fromSql(attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}current_residence_type'])),
      acadimicLevel: $BeneficiarysTable.$converteracadimicLeveln.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}acadimic_level'])),
      certification: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}certification']),
      studyAddress: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}study_address']),
      jobType: $BeneficiarysTable.$converterjobTypen.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}job_type'])),
      jobDescription: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}job_description']),
      monthlySalary: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}monthly_salary']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      creationTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}creation_time']),
      creationLocation: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}creation_location']),
    );
  }

  @override
  $BeneficiarysTable createAlias(String alias) {
    return $BeneficiarysTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<Gender, String, String> $convertergender =
      const EnumNameConverter<Gender>(Gender.values);
  static JsonTypeConverter2<Gender?, String?, String?> $convertergendern =
      JsonTypeConverter2.asNullable($convertergender);
  static JsonTypeConverter2<SocialStatus, String, String>
      $convertersocialStatus =
      const EnumNameConverter<SocialStatus>(SocialStatus.values);
  static JsonTypeConverter2<MedicalStatus, String, String>
      $convertermedicalStatus =
      const EnumNameConverter<MedicalStatus>(MedicalStatus.values);
  static JsonTypeConverter2<MedicalStatus?, String?, String?>
      $convertermedicalStatusn =
      JsonTypeConverter2.asNullable($convertermedicalStatus);
  static JsonTypeConverter2<DisabilityStatus, String, String>
      $converterdisabilityStatus =
      const EnumNameConverter<DisabilityStatus>(DisabilityStatus.values);
  static JsonTypeConverter2<DisabilityStatus?, String?, String?>
      $converterdisabilityStatusn =
      JsonTypeConverter2.asNullable($converterdisabilityStatus);
  static JsonTypeConverter2<ResidenceType, String, String>
      $converteroriginalResidenceType =
      const EnumNameConverter<ResidenceType>(ResidenceType.values);
  static JsonTypeConverter2<ResidenceType?, String?, String?>
      $converteroriginalResidenceTypen =
      JsonTypeConverter2.asNullable($converteroriginalResidenceType);
  static JsonTypeConverter2<ResidenceStatus, String, String>
      $converteroriginalResidenceStatus =
      const EnumNameConverter<ResidenceStatus>(ResidenceStatus.values);
  static JsonTypeConverter2<ResidenceStatus?, String?, String?>
      $converteroriginalResidenceStatusn =
      JsonTypeConverter2.asNullable($converteroriginalResidenceStatus);
  static JsonTypeConverter2<CurrentResidenceType, String, String>
      $convertercurrentResidenceType =
      const EnumNameConverter<CurrentResidenceType>(
          CurrentResidenceType.values);
  static JsonTypeConverter2<CurrentResidenceType?, String?, String?>
      $convertercurrentResidenceTypen =
      JsonTypeConverter2.asNullable($convertercurrentResidenceType);
  static JsonTypeConverter2<AcadimicLevel, String, String>
      $converteracadimicLevel =
      const EnumNameConverter<AcadimicLevel>(AcadimicLevel.values);
  static JsonTypeConverter2<AcadimicLevel?, String?, String?>
      $converteracadimicLeveln =
      JsonTypeConverter2.asNullable($converteracadimicLevel);
  static JsonTypeConverter2<JobType, String, String> $converterjobType =
      const EnumNameConverter<JobType>(JobType.values);
  static JsonTypeConverter2<JobType?, String?, String?> $converterjobTypen =
      JsonTypeConverter2.asNullable($converterjobType);
}

class Beneficiary extends DataClass implements Insertable<Beneficiary> {
  final int id;
  final String? aidRequired;
  final String firstName;
  final String fatherName;
  final String lastName;
  final String? motherName;
  final String? nationalNumber;
  final Gender? gender;
  final SocialStatus socialStatus;
  final DateTime? birthDate;
  final String? contactNumber;
  final MedicalStatus? medicalStatus;
  final DisabilityStatus? disabilityStatus;
  final String? partnerName;
  final String? partnerNationalNum;
  final String? partnerPhoneNum;
  final DateTime? partnerBirthDate;
  final String? familybookNumber;
  final int? familyMembersNumber;
  final int? familyChildrenNumber;
  final bool? familyHasMedicalStatus;
  final bool? familyHasDisability;
  final ResidenceType? originalResidenceType;
  final String? originalResidenceAddress;
  final String? originalResidenceRegion;
  final ResidenceStatus? originalResidenceStatus;
  final String? currentResidenceRegion;
  final String? currentResidenceAddress;
  final CurrentResidenceType? currentResidenceType;
  final AcadimicLevel? acadimicLevel;
  final String? certification;
  final String? studyAddress;
  final JobType? jobType;
  final String? jobDescription;
  final String? monthlySalary;
  final String? notes;
  final DateTime? creationTime;
  final String? creationLocation;
  const Beneficiary(
      {required this.id,
      this.aidRequired,
      required this.firstName,
      required this.fatherName,
      required this.lastName,
      this.motherName,
      this.nationalNumber,
      this.gender,
      required this.socialStatus,
      this.birthDate,
      this.contactNumber,
      this.medicalStatus,
      this.disabilityStatus,
      this.partnerName,
      this.partnerNationalNum,
      this.partnerPhoneNum,
      this.partnerBirthDate,
      this.familybookNumber,
      this.familyMembersNumber,
      this.familyChildrenNumber,
      this.familyHasMedicalStatus,
      this.familyHasDisability,
      this.originalResidenceType,
      this.originalResidenceAddress,
      this.originalResidenceRegion,
      this.originalResidenceStatus,
      this.currentResidenceRegion,
      this.currentResidenceAddress,
      this.currentResidenceType,
      this.acadimicLevel,
      this.certification,
      this.studyAddress,
      this.jobType,
      this.jobDescription,
      this.monthlySalary,
      this.notes,
      this.creationTime,
      this.creationLocation});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || aidRequired != null) {
      map['aid_required'] = Variable<String>(aidRequired);
    }
    map['first_name'] = Variable<String>(firstName);
    map['father_name'] = Variable<String>(fatherName);
    map['last_name'] = Variable<String>(lastName);
    if (!nullToAbsent || motherName != null) {
      map['mother_name'] = Variable<String>(motherName);
    }
    if (!nullToAbsent || nationalNumber != null) {
      map['national_number'] = Variable<String>(nationalNumber);
    }
    if (!nullToAbsent || gender != null) {
      map['gender'] =
          Variable<String>($BeneficiarysTable.$convertergendern.toSql(gender));
    }
    {
      map['social_status'] = Variable<String>(
          $BeneficiarysTable.$convertersocialStatus.toSql(socialStatus));
    }
    if (!nullToAbsent || birthDate != null) {
      map['birth_date'] = Variable<DateTime>(birthDate);
    }
    if (!nullToAbsent || contactNumber != null) {
      map['contact_number'] = Variable<String>(contactNumber);
    }
    if (!nullToAbsent || medicalStatus != null) {
      map['medical_status'] = Variable<String>(
          $BeneficiarysTable.$convertermedicalStatusn.toSql(medicalStatus));
    }
    if (!nullToAbsent || disabilityStatus != null) {
      map['disability_status'] = Variable<String>($BeneficiarysTable
          .$converterdisabilityStatusn
          .toSql(disabilityStatus));
    }
    if (!nullToAbsent || partnerName != null) {
      map['partner_name'] = Variable<String>(partnerName);
    }
    if (!nullToAbsent || partnerNationalNum != null) {
      map['partner_national_num'] = Variable<String>(partnerNationalNum);
    }
    if (!nullToAbsent || partnerPhoneNum != null) {
      map['partner_phone_num'] = Variable<String>(partnerPhoneNum);
    }
    if (!nullToAbsent || partnerBirthDate != null) {
      map['partner_birth_date'] = Variable<DateTime>(partnerBirthDate);
    }
    if (!nullToAbsent || familybookNumber != null) {
      map['familybook_number'] = Variable<String>(familybookNumber);
    }
    if (!nullToAbsent || familyMembersNumber != null) {
      map['family_members_number'] = Variable<int>(familyMembersNumber);
    }
    if (!nullToAbsent || familyChildrenNumber != null) {
      map['family_children_number'] = Variable<int>(familyChildrenNumber);
    }
    if (!nullToAbsent || familyHasMedicalStatus != null) {
      map['family_has_medical_status'] = Variable<bool>(familyHasMedicalStatus);
    }
    if (!nullToAbsent || familyHasDisability != null) {
      map['family_has_disability'] = Variable<bool>(familyHasDisability);
    }
    if (!nullToAbsent || originalResidenceType != null) {
      map['original_residence_type'] = Variable<String>($BeneficiarysTable
          .$converteroriginalResidenceTypen
          .toSql(originalResidenceType));
    }
    if (!nullToAbsent || originalResidenceAddress != null) {
      map['original_residence_address'] =
          Variable<String>(originalResidenceAddress);
    }
    if (!nullToAbsent || originalResidenceRegion != null) {
      map['original_residence_region'] =
          Variable<String>(originalResidenceRegion);
    }
    if (!nullToAbsent || originalResidenceStatus != null) {
      map['original_residence_status'] = Variable<String>($BeneficiarysTable
          .$converteroriginalResidenceStatusn
          .toSql(originalResidenceStatus));
    }
    if (!nullToAbsent || currentResidenceRegion != null) {
      map['current_residence_region'] =
          Variable<String>(currentResidenceRegion);
    }
    if (!nullToAbsent || currentResidenceAddress != null) {
      map['current_residence_address'] =
          Variable<String>(currentResidenceAddress);
    }
    if (!nullToAbsent || currentResidenceType != null) {
      map['current_residence_type'] = Variable<String>($BeneficiarysTable
          .$convertercurrentResidenceTypen
          .toSql(currentResidenceType));
    }
    if (!nullToAbsent || acadimicLevel != null) {
      map['acadimic_level'] = Variable<String>(
          $BeneficiarysTable.$converteracadimicLeveln.toSql(acadimicLevel));
    }
    if (!nullToAbsent || certification != null) {
      map['certification'] = Variable<String>(certification);
    }
    if (!nullToAbsent || studyAddress != null) {
      map['study_address'] = Variable<String>(studyAddress);
    }
    if (!nullToAbsent || jobType != null) {
      map['job_type'] = Variable<String>(
          $BeneficiarysTable.$converterjobTypen.toSql(jobType));
    }
    if (!nullToAbsent || jobDescription != null) {
      map['job_description'] = Variable<String>(jobDescription);
    }
    if (!nullToAbsent || monthlySalary != null) {
      map['monthly_salary'] = Variable<String>(monthlySalary);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    if (!nullToAbsent || creationTime != null) {
      map['creation_time'] = Variable<DateTime>(creationTime);
    }
    if (!nullToAbsent || creationLocation != null) {
      map['creation_location'] = Variable<String>(creationLocation);
    }
    return map;
  }

  BeneficiarysCompanion toCompanion(bool nullToAbsent) {
    return BeneficiarysCompanion(
      id: Value(id),
      aidRequired: aidRequired == null && nullToAbsent
          ? const Value.absent()
          : Value(aidRequired),
      firstName: Value(firstName),
      fatherName: Value(fatherName),
      lastName: Value(lastName),
      motherName: motherName == null && nullToAbsent
          ? const Value.absent()
          : Value(motherName),
      nationalNumber: nationalNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(nationalNumber),
      gender:
          gender == null && nullToAbsent ? const Value.absent() : Value(gender),
      socialStatus: Value(socialStatus),
      birthDate: birthDate == null && nullToAbsent
          ? const Value.absent()
          : Value(birthDate),
      contactNumber: contactNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(contactNumber),
      medicalStatus: medicalStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(medicalStatus),
      disabilityStatus: disabilityStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(disabilityStatus),
      partnerName: partnerName == null && nullToAbsent
          ? const Value.absent()
          : Value(partnerName),
      partnerNationalNum: partnerNationalNum == null && nullToAbsent
          ? const Value.absent()
          : Value(partnerNationalNum),
      partnerPhoneNum: partnerPhoneNum == null && nullToAbsent
          ? const Value.absent()
          : Value(partnerPhoneNum),
      partnerBirthDate: partnerBirthDate == null && nullToAbsent
          ? const Value.absent()
          : Value(partnerBirthDate),
      familybookNumber: familybookNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(familybookNumber),
      familyMembersNumber: familyMembersNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(familyMembersNumber),
      familyChildrenNumber: familyChildrenNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(familyChildrenNumber),
      familyHasMedicalStatus: familyHasMedicalStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(familyHasMedicalStatus),
      familyHasDisability: familyHasDisability == null && nullToAbsent
          ? const Value.absent()
          : Value(familyHasDisability),
      originalResidenceType: originalResidenceType == null && nullToAbsent
          ? const Value.absent()
          : Value(originalResidenceType),
      originalResidenceAddress: originalResidenceAddress == null && nullToAbsent
          ? const Value.absent()
          : Value(originalResidenceAddress),
      originalResidenceRegion: originalResidenceRegion == null && nullToAbsent
          ? const Value.absent()
          : Value(originalResidenceRegion),
      originalResidenceStatus: originalResidenceStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(originalResidenceStatus),
      currentResidenceRegion: currentResidenceRegion == null && nullToAbsent
          ? const Value.absent()
          : Value(currentResidenceRegion),
      currentResidenceAddress: currentResidenceAddress == null && nullToAbsent
          ? const Value.absent()
          : Value(currentResidenceAddress),
      currentResidenceType: currentResidenceType == null && nullToAbsent
          ? const Value.absent()
          : Value(currentResidenceType),
      acadimicLevel: acadimicLevel == null && nullToAbsent
          ? const Value.absent()
          : Value(acadimicLevel),
      certification: certification == null && nullToAbsent
          ? const Value.absent()
          : Value(certification),
      studyAddress: studyAddress == null && nullToAbsent
          ? const Value.absent()
          : Value(studyAddress),
      jobType: jobType == null && nullToAbsent
          ? const Value.absent()
          : Value(jobType),
      jobDescription: jobDescription == null && nullToAbsent
          ? const Value.absent()
          : Value(jobDescription),
      monthlySalary: monthlySalary == null && nullToAbsent
          ? const Value.absent()
          : Value(monthlySalary),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      creationTime: creationTime == null && nullToAbsent
          ? const Value.absent()
          : Value(creationTime),
      creationLocation: creationLocation == null && nullToAbsent
          ? const Value.absent()
          : Value(creationLocation),
    );
  }

  factory Beneficiary.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Beneficiary(
      id: serializer.fromJson<int>(json['id']),
      aidRequired: serializer.fromJson<String?>(json['aidRequired']),
      firstName: serializer.fromJson<String>(json['firstName']),
      fatherName: serializer.fromJson<String>(json['fatherName']),
      lastName: serializer.fromJson<String>(json['lastName']),
      motherName: serializer.fromJson<String?>(json['motherName']),
      nationalNumber: serializer.fromJson<String?>(json['nationalNumber']),
      gender: $BeneficiarysTable.$convertergendern
          .fromJson(serializer.fromJson<String?>(json['gender'])),
      socialStatus: $BeneficiarysTable.$convertersocialStatus
          .fromJson(serializer.fromJson<String>(json['socialStatus'])),
      birthDate: serializer.fromJson<DateTime?>(json['birthDate']),
      contactNumber: serializer.fromJson<String?>(json['contactNumber']),
      medicalStatus: $BeneficiarysTable.$convertermedicalStatusn
          .fromJson(serializer.fromJson<String?>(json['medicalStatus'])),
      disabilityStatus: $BeneficiarysTable.$converterdisabilityStatusn
          .fromJson(serializer.fromJson<String?>(json['disabilityStatus'])),
      partnerName: serializer.fromJson<String?>(json['partnerName']),
      partnerNationalNum:
          serializer.fromJson<String?>(json['partnerNationalNum']),
      partnerPhoneNum: serializer.fromJson<String?>(json['partnerPhoneNum']),
      partnerBirthDate:
          serializer.fromJson<DateTime?>(json['partnerBirthDate']),
      familybookNumber: serializer.fromJson<String?>(json['familybookNumber']),
      familyMembersNumber:
          serializer.fromJson<int?>(json['familyMembersNumber']),
      familyChildrenNumber:
          serializer.fromJson<int?>(json['familyChildrenNumber']),
      familyHasMedicalStatus:
          serializer.fromJson<bool?>(json['familyHasMedicalStatus']),
      familyHasDisability:
          serializer.fromJson<bool?>(json['familyHasDisability']),
      originalResidenceType: $BeneficiarysTable.$converteroriginalResidenceTypen
          .fromJson(
              serializer.fromJson<String?>(json['originalResidenceType'])),
      originalResidenceAddress:
          serializer.fromJson<String?>(json['originalResidenceAddress']),
      originalResidenceRegion:
          serializer.fromJson<String?>(json['originalResidenceRegion']),
      originalResidenceStatus:
          $BeneficiarysTable.$converteroriginalResidenceStatusn.fromJson(
              serializer.fromJson<String?>(json['originalResidenceStatus'])),
      currentResidenceRegion:
          serializer.fromJson<String?>(json['currentResidenceRegion']),
      currentResidenceAddress:
          serializer.fromJson<String?>(json['currentResidenceAddress']),
      currentResidenceType: $BeneficiarysTable.$convertercurrentResidenceTypen
          .fromJson(serializer.fromJson<String?>(json['currentResidenceType'])),
      acadimicLevel: $BeneficiarysTable.$converteracadimicLeveln
          .fromJson(serializer.fromJson<String?>(json['acadimicLevel'])),
      certification: serializer.fromJson<String?>(json['certification']),
      studyAddress: serializer.fromJson<String?>(json['studyAddress']),
      jobType: $BeneficiarysTable.$converterjobTypen
          .fromJson(serializer.fromJson<String?>(json['jobType'])),
      jobDescription: serializer.fromJson<String?>(json['jobDescription']),
      monthlySalary: serializer.fromJson<String?>(json['monthlySalary']),
      notes: serializer.fromJson<String?>(json['notes']),
      creationTime: serializer.fromJson<DateTime?>(json['creationTime']),
      creationLocation: serializer.fromJson<String?>(json['creationLocation']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'aidRequired': serializer.toJson<String?>(aidRequired),
      'firstName': serializer.toJson<String>(firstName),
      'fatherName': serializer.toJson<String>(fatherName),
      'lastName': serializer.toJson<String>(lastName),
      'motherName': serializer.toJson<String?>(motherName),
      'nationalNumber': serializer.toJson<String?>(nationalNumber),
      'gender': serializer
          .toJson<String?>($BeneficiarysTable.$convertergendern.toJson(gender)),
      'socialStatus': serializer.toJson<String>(
          $BeneficiarysTable.$convertersocialStatus.toJson(socialStatus)),
      'birthDate': serializer.toJson<DateTime?>(birthDate),
      'contactNumber': serializer.toJson<String?>(contactNumber),
      'medicalStatus': serializer.toJson<String?>(
          $BeneficiarysTable.$convertermedicalStatusn.toJson(medicalStatus)),
      'disabilityStatus': serializer.toJson<String?>($BeneficiarysTable
          .$converterdisabilityStatusn
          .toJson(disabilityStatus)),
      'partnerName': serializer.toJson<String?>(partnerName),
      'partnerNationalNum': serializer.toJson<String?>(partnerNationalNum),
      'partnerPhoneNum': serializer.toJson<String?>(partnerPhoneNum),
      'partnerBirthDate': serializer.toJson<DateTime?>(partnerBirthDate),
      'familybookNumber': serializer.toJson<String?>(familybookNumber),
      'familyMembersNumber': serializer.toJson<int?>(familyMembersNumber),
      'familyChildrenNumber': serializer.toJson<int?>(familyChildrenNumber),
      'familyHasMedicalStatus':
          serializer.toJson<bool?>(familyHasMedicalStatus),
      'familyHasDisability': serializer.toJson<bool?>(familyHasDisability),
      'originalResidenceType': serializer.toJson<String?>($BeneficiarysTable
          .$converteroriginalResidenceTypen
          .toJson(originalResidenceType)),
      'originalResidenceAddress':
          serializer.toJson<String?>(originalResidenceAddress),
      'originalResidenceRegion':
          serializer.toJson<String?>(originalResidenceRegion),
      'originalResidenceStatus': serializer.toJson<String?>($BeneficiarysTable
          .$converteroriginalResidenceStatusn
          .toJson(originalResidenceStatus)),
      'currentResidenceRegion':
          serializer.toJson<String?>(currentResidenceRegion),
      'currentResidenceAddress':
          serializer.toJson<String?>(currentResidenceAddress),
      'currentResidenceType': serializer.toJson<String?>($BeneficiarysTable
          .$convertercurrentResidenceTypen
          .toJson(currentResidenceType)),
      'acadimicLevel': serializer.toJson<String?>(
          $BeneficiarysTable.$converteracadimicLeveln.toJson(acadimicLevel)),
      'certification': serializer.toJson<String?>(certification),
      'studyAddress': serializer.toJson<String?>(studyAddress),
      'jobType': serializer.toJson<String?>(
          $BeneficiarysTable.$converterjobTypen.toJson(jobType)),
      'jobDescription': serializer.toJson<String?>(jobDescription),
      'monthlySalary': serializer.toJson<String?>(monthlySalary),
      'notes': serializer.toJson<String?>(notes),
      'creationTime': serializer.toJson<DateTime?>(creationTime),
      'creationLocation': serializer.toJson<String?>(creationLocation),
    };
  }

  Beneficiary copyWith(
          {int? id,
          Value<String?> aidRequired = const Value.absent(),
          String? firstName,
          String? fatherName,
          String? lastName,
          Value<String?> motherName = const Value.absent(),
          Value<String?> nationalNumber = const Value.absent(),
          Value<Gender?> gender = const Value.absent(),
          SocialStatus? socialStatus,
          Value<DateTime?> birthDate = const Value.absent(),
          Value<String?> contactNumber = const Value.absent(),
          Value<MedicalStatus?> medicalStatus = const Value.absent(),
          Value<DisabilityStatus?> disabilityStatus = const Value.absent(),
          Value<String?> partnerName = const Value.absent(),
          Value<String?> partnerNationalNum = const Value.absent(),
          Value<String?> partnerPhoneNum = const Value.absent(),
          Value<DateTime?> partnerBirthDate = const Value.absent(),
          Value<String?> familybookNumber = const Value.absent(),
          Value<int?> familyMembersNumber = const Value.absent(),
          Value<int?> familyChildrenNumber = const Value.absent(),
          Value<bool?> familyHasMedicalStatus = const Value.absent(),
          Value<bool?> familyHasDisability = const Value.absent(),
          Value<ResidenceType?> originalResidenceType = const Value.absent(),
          Value<String?> originalResidenceAddress = const Value.absent(),
          Value<String?> originalResidenceRegion = const Value.absent(),
          Value<ResidenceStatus?> originalResidenceStatus =
              const Value.absent(),
          Value<String?> currentResidenceRegion = const Value.absent(),
          Value<String?> currentResidenceAddress = const Value.absent(),
          Value<CurrentResidenceType?> currentResidenceType =
              const Value.absent(),
          Value<AcadimicLevel?> acadimicLevel = const Value.absent(),
          Value<String?> certification = const Value.absent(),
          Value<String?> studyAddress = const Value.absent(),
          Value<JobType?> jobType = const Value.absent(),
          Value<String?> jobDescription = const Value.absent(),
          Value<String?> monthlySalary = const Value.absent(),
          Value<String?> notes = const Value.absent(),
          Value<DateTime?> creationTime = const Value.absent(),
          Value<String?> creationLocation = const Value.absent()}) =>
      Beneficiary(
        id: id ?? this.id,
        aidRequired: aidRequired.present ? aidRequired.value : this.aidRequired,
        firstName: firstName ?? this.firstName,
        fatherName: fatherName ?? this.fatherName,
        lastName: lastName ?? this.lastName,
        motherName: motherName.present ? motherName.value : this.motherName,
        nationalNumber:
            nationalNumber.present ? nationalNumber.value : this.nationalNumber,
        gender: gender.present ? gender.value : this.gender,
        socialStatus: socialStatus ?? this.socialStatus,
        birthDate: birthDate.present ? birthDate.value : this.birthDate,
        contactNumber:
            contactNumber.present ? contactNumber.value : this.contactNumber,
        medicalStatus:
            medicalStatus.present ? medicalStatus.value : this.medicalStatus,
        disabilityStatus: disabilityStatus.present
            ? disabilityStatus.value
            : this.disabilityStatus,
        partnerName: partnerName.present ? partnerName.value : this.partnerName,
        partnerNationalNum: partnerNationalNum.present
            ? partnerNationalNum.value
            : this.partnerNationalNum,
        partnerPhoneNum: partnerPhoneNum.present
            ? partnerPhoneNum.value
            : this.partnerPhoneNum,
        partnerBirthDate: partnerBirthDate.present
            ? partnerBirthDate.value
            : this.partnerBirthDate,
        familybookNumber: familybookNumber.present
            ? familybookNumber.value
            : this.familybookNumber,
        familyMembersNumber: familyMembersNumber.present
            ? familyMembersNumber.value
            : this.familyMembersNumber,
        familyChildrenNumber: familyChildrenNumber.present
            ? familyChildrenNumber.value
            : this.familyChildrenNumber,
        familyHasMedicalStatus: familyHasMedicalStatus.present
            ? familyHasMedicalStatus.value
            : this.familyHasMedicalStatus,
        familyHasDisability: familyHasDisability.present
            ? familyHasDisability.value
            : this.familyHasDisability,
        originalResidenceType: originalResidenceType.present
            ? originalResidenceType.value
            : this.originalResidenceType,
        originalResidenceAddress: originalResidenceAddress.present
            ? originalResidenceAddress.value
            : this.originalResidenceAddress,
        originalResidenceRegion: originalResidenceRegion.present
            ? originalResidenceRegion.value
            : this.originalResidenceRegion,
        originalResidenceStatus: originalResidenceStatus.present
            ? originalResidenceStatus.value
            : this.originalResidenceStatus,
        currentResidenceRegion: currentResidenceRegion.present
            ? currentResidenceRegion.value
            : this.currentResidenceRegion,
        currentResidenceAddress: currentResidenceAddress.present
            ? currentResidenceAddress.value
            : this.currentResidenceAddress,
        currentResidenceType: currentResidenceType.present
            ? currentResidenceType.value
            : this.currentResidenceType,
        acadimicLevel:
            acadimicLevel.present ? acadimicLevel.value : this.acadimicLevel,
        certification:
            certification.present ? certification.value : this.certification,
        studyAddress:
            studyAddress.present ? studyAddress.value : this.studyAddress,
        jobType: jobType.present ? jobType.value : this.jobType,
        jobDescription:
            jobDescription.present ? jobDescription.value : this.jobDescription,
        monthlySalary:
            monthlySalary.present ? monthlySalary.value : this.monthlySalary,
        notes: notes.present ? notes.value : this.notes,
        creationTime:
            creationTime.present ? creationTime.value : this.creationTime,
        creationLocation: creationLocation.present
            ? creationLocation.value
            : this.creationLocation,
      );
  Beneficiary copyWithCompanion(BeneficiarysCompanion data) {
    return Beneficiary(
      id: data.id.present ? data.id.value : this.id,
      aidRequired:
          data.aidRequired.present ? data.aidRequired.value : this.aidRequired,
      firstName: data.firstName.present ? data.firstName.value : this.firstName,
      fatherName:
          data.fatherName.present ? data.fatherName.value : this.fatherName,
      lastName: data.lastName.present ? data.lastName.value : this.lastName,
      motherName:
          data.motherName.present ? data.motherName.value : this.motherName,
      nationalNumber: data.nationalNumber.present
          ? data.nationalNumber.value
          : this.nationalNumber,
      gender: data.gender.present ? data.gender.value : this.gender,
      socialStatus: data.socialStatus.present
          ? data.socialStatus.value
          : this.socialStatus,
      birthDate: data.birthDate.present ? data.birthDate.value : this.birthDate,
      contactNumber: data.contactNumber.present
          ? data.contactNumber.value
          : this.contactNumber,
      medicalStatus: data.medicalStatus.present
          ? data.medicalStatus.value
          : this.medicalStatus,
      disabilityStatus: data.disabilityStatus.present
          ? data.disabilityStatus.value
          : this.disabilityStatus,
      partnerName:
          data.partnerName.present ? data.partnerName.value : this.partnerName,
      partnerNationalNum: data.partnerNationalNum.present
          ? data.partnerNationalNum.value
          : this.partnerNationalNum,
      partnerPhoneNum: data.partnerPhoneNum.present
          ? data.partnerPhoneNum.value
          : this.partnerPhoneNum,
      partnerBirthDate: data.partnerBirthDate.present
          ? data.partnerBirthDate.value
          : this.partnerBirthDate,
      familybookNumber: data.familybookNumber.present
          ? data.familybookNumber.value
          : this.familybookNumber,
      familyMembersNumber: data.familyMembersNumber.present
          ? data.familyMembersNumber.value
          : this.familyMembersNumber,
      familyChildrenNumber: data.familyChildrenNumber.present
          ? data.familyChildrenNumber.value
          : this.familyChildrenNumber,
      familyHasMedicalStatus: data.familyHasMedicalStatus.present
          ? data.familyHasMedicalStatus.value
          : this.familyHasMedicalStatus,
      familyHasDisability: data.familyHasDisability.present
          ? data.familyHasDisability.value
          : this.familyHasDisability,
      originalResidenceType: data.originalResidenceType.present
          ? data.originalResidenceType.value
          : this.originalResidenceType,
      originalResidenceAddress: data.originalResidenceAddress.present
          ? data.originalResidenceAddress.value
          : this.originalResidenceAddress,
      originalResidenceRegion: data.originalResidenceRegion.present
          ? data.originalResidenceRegion.value
          : this.originalResidenceRegion,
      originalResidenceStatus: data.originalResidenceStatus.present
          ? data.originalResidenceStatus.value
          : this.originalResidenceStatus,
      currentResidenceRegion: data.currentResidenceRegion.present
          ? data.currentResidenceRegion.value
          : this.currentResidenceRegion,
      currentResidenceAddress: data.currentResidenceAddress.present
          ? data.currentResidenceAddress.value
          : this.currentResidenceAddress,
      currentResidenceType: data.currentResidenceType.present
          ? data.currentResidenceType.value
          : this.currentResidenceType,
      acadimicLevel: data.acadimicLevel.present
          ? data.acadimicLevel.value
          : this.acadimicLevel,
      certification: data.certification.present
          ? data.certification.value
          : this.certification,
      studyAddress: data.studyAddress.present
          ? data.studyAddress.value
          : this.studyAddress,
      jobType: data.jobType.present ? data.jobType.value : this.jobType,
      jobDescription: data.jobDescription.present
          ? data.jobDescription.value
          : this.jobDescription,
      monthlySalary: data.monthlySalary.present
          ? data.monthlySalary.value
          : this.monthlySalary,
      notes: data.notes.present ? data.notes.value : this.notes,
      creationTime: data.creationTime.present
          ? data.creationTime.value
          : this.creationTime,
      creationLocation: data.creationLocation.present
          ? data.creationLocation.value
          : this.creationLocation,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Beneficiary(')
          ..write('id: $id, ')
          ..write('aidRequired: $aidRequired, ')
          ..write('firstName: $firstName, ')
          ..write('fatherName: $fatherName, ')
          ..write('lastName: $lastName, ')
          ..write('motherName: $motherName, ')
          ..write('nationalNumber: $nationalNumber, ')
          ..write('gender: $gender, ')
          ..write('socialStatus: $socialStatus, ')
          ..write('birthDate: $birthDate, ')
          ..write('contactNumber: $contactNumber, ')
          ..write('medicalStatus: $medicalStatus, ')
          ..write('disabilityStatus: $disabilityStatus, ')
          ..write('partnerName: $partnerName, ')
          ..write('partnerNationalNum: $partnerNationalNum, ')
          ..write('partnerPhoneNum: $partnerPhoneNum, ')
          ..write('partnerBirthDate: $partnerBirthDate, ')
          ..write('familybookNumber: $familybookNumber, ')
          ..write('familyMembersNumber: $familyMembersNumber, ')
          ..write('familyChildrenNumber: $familyChildrenNumber, ')
          ..write('familyHasMedicalStatus: $familyHasMedicalStatus, ')
          ..write('familyHasDisability: $familyHasDisability, ')
          ..write('originalResidenceType: $originalResidenceType, ')
          ..write('originalResidenceAddress: $originalResidenceAddress, ')
          ..write('originalResidenceRegion: $originalResidenceRegion, ')
          ..write('originalResidenceStatus: $originalResidenceStatus, ')
          ..write('currentResidenceRegion: $currentResidenceRegion, ')
          ..write('currentResidenceAddress: $currentResidenceAddress, ')
          ..write('currentResidenceType: $currentResidenceType, ')
          ..write('acadimicLevel: $acadimicLevel, ')
          ..write('certification: $certification, ')
          ..write('studyAddress: $studyAddress, ')
          ..write('jobType: $jobType, ')
          ..write('jobDescription: $jobDescription, ')
          ..write('monthlySalary: $monthlySalary, ')
          ..write('notes: $notes, ')
          ..write('creationTime: $creationTime, ')
          ..write('creationLocation: $creationLocation')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        aidRequired,
        firstName,
        fatherName,
        lastName,
        motherName,
        nationalNumber,
        gender,
        socialStatus,
        birthDate,
        contactNumber,
        medicalStatus,
        disabilityStatus,
        partnerName,
        partnerNationalNum,
        partnerPhoneNum,
        partnerBirthDate,
        familybookNumber,
        familyMembersNumber,
        familyChildrenNumber,
        familyHasMedicalStatus,
        familyHasDisability,
        originalResidenceType,
        originalResidenceAddress,
        originalResidenceRegion,
        originalResidenceStatus,
        currentResidenceRegion,
        currentResidenceAddress,
        currentResidenceType,
        acadimicLevel,
        certification,
        studyAddress,
        jobType,
        jobDescription,
        monthlySalary,
        notes,
        creationTime,
        creationLocation
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Beneficiary &&
          other.id == this.id &&
          other.aidRequired == this.aidRequired &&
          other.firstName == this.firstName &&
          other.fatherName == this.fatherName &&
          other.lastName == this.lastName &&
          other.motherName == this.motherName &&
          other.nationalNumber == this.nationalNumber &&
          other.gender == this.gender &&
          other.socialStatus == this.socialStatus &&
          other.birthDate == this.birthDate &&
          other.contactNumber == this.contactNumber &&
          other.medicalStatus == this.medicalStatus &&
          other.disabilityStatus == this.disabilityStatus &&
          other.partnerName == this.partnerName &&
          other.partnerNationalNum == this.partnerNationalNum &&
          other.partnerPhoneNum == this.partnerPhoneNum &&
          other.partnerBirthDate == this.partnerBirthDate &&
          other.familybookNumber == this.familybookNumber &&
          other.familyMembersNumber == this.familyMembersNumber &&
          other.familyChildrenNumber == this.familyChildrenNumber &&
          other.familyHasMedicalStatus == this.familyHasMedicalStatus &&
          other.familyHasDisability == this.familyHasDisability &&
          other.originalResidenceType == this.originalResidenceType &&
          other.originalResidenceAddress == this.originalResidenceAddress &&
          other.originalResidenceRegion == this.originalResidenceRegion &&
          other.originalResidenceStatus == this.originalResidenceStatus &&
          other.currentResidenceRegion == this.currentResidenceRegion &&
          other.currentResidenceAddress == this.currentResidenceAddress &&
          other.currentResidenceType == this.currentResidenceType &&
          other.acadimicLevel == this.acadimicLevel &&
          other.certification == this.certification &&
          other.studyAddress == this.studyAddress &&
          other.jobType == this.jobType &&
          other.jobDescription == this.jobDescription &&
          other.monthlySalary == this.monthlySalary &&
          other.notes == this.notes &&
          other.creationTime == this.creationTime &&
          other.creationLocation == this.creationLocation);
}

class BeneficiarysCompanion extends UpdateCompanion<Beneficiary> {
  final Value<int> id;
  final Value<String?> aidRequired;
  final Value<String> firstName;
  final Value<String> fatherName;
  final Value<String> lastName;
  final Value<String?> motherName;
  final Value<String?> nationalNumber;
  final Value<Gender?> gender;
  final Value<SocialStatus> socialStatus;
  final Value<DateTime?> birthDate;
  final Value<String?> contactNumber;
  final Value<MedicalStatus?> medicalStatus;
  final Value<DisabilityStatus?> disabilityStatus;
  final Value<String?> partnerName;
  final Value<String?> partnerNationalNum;
  final Value<String?> partnerPhoneNum;
  final Value<DateTime?> partnerBirthDate;
  final Value<String?> familybookNumber;
  final Value<int?> familyMembersNumber;
  final Value<int?> familyChildrenNumber;
  final Value<bool?> familyHasMedicalStatus;
  final Value<bool?> familyHasDisability;
  final Value<ResidenceType?> originalResidenceType;
  final Value<String?> originalResidenceAddress;
  final Value<String?> originalResidenceRegion;
  final Value<ResidenceStatus?> originalResidenceStatus;
  final Value<String?> currentResidenceRegion;
  final Value<String?> currentResidenceAddress;
  final Value<CurrentResidenceType?> currentResidenceType;
  final Value<AcadimicLevel?> acadimicLevel;
  final Value<String?> certification;
  final Value<String?> studyAddress;
  final Value<JobType?> jobType;
  final Value<String?> jobDescription;
  final Value<String?> monthlySalary;
  final Value<String?> notes;
  final Value<DateTime?> creationTime;
  final Value<String?> creationLocation;
  const BeneficiarysCompanion({
    this.id = const Value.absent(),
    this.aidRequired = const Value.absent(),
    this.firstName = const Value.absent(),
    this.fatherName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.motherName = const Value.absent(),
    this.nationalNumber = const Value.absent(),
    this.gender = const Value.absent(),
    this.socialStatus = const Value.absent(),
    this.birthDate = const Value.absent(),
    this.contactNumber = const Value.absent(),
    this.medicalStatus = const Value.absent(),
    this.disabilityStatus = const Value.absent(),
    this.partnerName = const Value.absent(),
    this.partnerNationalNum = const Value.absent(),
    this.partnerPhoneNum = const Value.absent(),
    this.partnerBirthDate = const Value.absent(),
    this.familybookNumber = const Value.absent(),
    this.familyMembersNumber = const Value.absent(),
    this.familyChildrenNumber = const Value.absent(),
    this.familyHasMedicalStatus = const Value.absent(),
    this.familyHasDisability = const Value.absent(),
    this.originalResidenceType = const Value.absent(),
    this.originalResidenceAddress = const Value.absent(),
    this.originalResidenceRegion = const Value.absent(),
    this.originalResidenceStatus = const Value.absent(),
    this.currentResidenceRegion = const Value.absent(),
    this.currentResidenceAddress = const Value.absent(),
    this.currentResidenceType = const Value.absent(),
    this.acadimicLevel = const Value.absent(),
    this.certification = const Value.absent(),
    this.studyAddress = const Value.absent(),
    this.jobType = const Value.absent(),
    this.jobDescription = const Value.absent(),
    this.monthlySalary = const Value.absent(),
    this.notes = const Value.absent(),
    this.creationTime = const Value.absent(),
    this.creationLocation = const Value.absent(),
  });
  BeneficiarysCompanion.insert({
    this.id = const Value.absent(),
    this.aidRequired = const Value.absent(),
    required String firstName,
    required String fatherName,
    required String lastName,
    this.motherName = const Value.absent(),
    this.nationalNumber = const Value.absent(),
    this.gender = const Value.absent(),
    required SocialStatus socialStatus,
    this.birthDate = const Value.absent(),
    this.contactNumber = const Value.absent(),
    this.medicalStatus = const Value.absent(),
    this.disabilityStatus = const Value.absent(),
    this.partnerName = const Value.absent(),
    this.partnerNationalNum = const Value.absent(),
    this.partnerPhoneNum = const Value.absent(),
    this.partnerBirthDate = const Value.absent(),
    this.familybookNumber = const Value.absent(),
    this.familyMembersNumber = const Value.absent(),
    this.familyChildrenNumber = const Value.absent(),
    this.familyHasMedicalStatus = const Value.absent(),
    this.familyHasDisability = const Value.absent(),
    this.originalResidenceType = const Value.absent(),
    this.originalResidenceAddress = const Value.absent(),
    this.originalResidenceRegion = const Value.absent(),
    this.originalResidenceStatus = const Value.absent(),
    this.currentResidenceRegion = const Value.absent(),
    this.currentResidenceAddress = const Value.absent(),
    this.currentResidenceType = const Value.absent(),
    this.acadimicLevel = const Value.absent(),
    this.certification = const Value.absent(),
    this.studyAddress = const Value.absent(),
    this.jobType = const Value.absent(),
    this.jobDescription = const Value.absent(),
    this.monthlySalary = const Value.absent(),
    this.notes = const Value.absent(),
    this.creationTime = const Value.absent(),
    this.creationLocation = const Value.absent(),
  })  : firstName = Value(firstName),
        fatherName = Value(fatherName),
        lastName = Value(lastName),
        socialStatus = Value(socialStatus);
  static Insertable<Beneficiary> custom({
    Expression<int>? id,
    Expression<String>? aidRequired,
    Expression<String>? firstName,
    Expression<String>? fatherName,
    Expression<String>? lastName,
    Expression<String>? motherName,
    Expression<String>? nationalNumber,
    Expression<String>? gender,
    Expression<String>? socialStatus,
    Expression<DateTime>? birthDate,
    Expression<String>? contactNumber,
    Expression<String>? medicalStatus,
    Expression<String>? disabilityStatus,
    Expression<String>? partnerName,
    Expression<String>? partnerNationalNum,
    Expression<String>? partnerPhoneNum,
    Expression<DateTime>? partnerBirthDate,
    Expression<String>? familybookNumber,
    Expression<int>? familyMembersNumber,
    Expression<int>? familyChildrenNumber,
    Expression<bool>? familyHasMedicalStatus,
    Expression<bool>? familyHasDisability,
    Expression<String>? originalResidenceType,
    Expression<String>? originalResidenceAddress,
    Expression<String>? originalResidenceRegion,
    Expression<String>? originalResidenceStatus,
    Expression<String>? currentResidenceRegion,
    Expression<String>? currentResidenceAddress,
    Expression<String>? currentResidenceType,
    Expression<String>? acadimicLevel,
    Expression<String>? certification,
    Expression<String>? studyAddress,
    Expression<String>? jobType,
    Expression<String>? jobDescription,
    Expression<String>? monthlySalary,
    Expression<String>? notes,
    Expression<DateTime>? creationTime,
    Expression<String>? creationLocation,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (aidRequired != null) 'aid_required': aidRequired,
      if (firstName != null) 'first_name': firstName,
      if (fatherName != null) 'father_name': fatherName,
      if (lastName != null) 'last_name': lastName,
      if (motherName != null) 'mother_name': motherName,
      if (nationalNumber != null) 'national_number': nationalNumber,
      if (gender != null) 'gender': gender,
      if (socialStatus != null) 'social_status': socialStatus,
      if (birthDate != null) 'birth_date': birthDate,
      if (contactNumber != null) 'contact_number': contactNumber,
      if (medicalStatus != null) 'medical_status': medicalStatus,
      if (disabilityStatus != null) 'disability_status': disabilityStatus,
      if (partnerName != null) 'partner_name': partnerName,
      if (partnerNationalNum != null)
        'partner_national_num': partnerNationalNum,
      if (partnerPhoneNum != null) 'partner_phone_num': partnerPhoneNum,
      if (partnerBirthDate != null) 'partner_birth_date': partnerBirthDate,
      if (familybookNumber != null) 'familybook_number': familybookNumber,
      if (familyMembersNumber != null)
        'family_members_number': familyMembersNumber,
      if (familyChildrenNumber != null)
        'family_children_number': familyChildrenNumber,
      if (familyHasMedicalStatus != null)
        'family_has_medical_status': familyHasMedicalStatus,
      if (familyHasDisability != null)
        'family_has_disability': familyHasDisability,
      if (originalResidenceType != null)
        'original_residence_type': originalResidenceType,
      if (originalResidenceAddress != null)
        'original_residence_address': originalResidenceAddress,
      if (originalResidenceRegion != null)
        'original_residence_region': originalResidenceRegion,
      if (originalResidenceStatus != null)
        'original_residence_status': originalResidenceStatus,
      if (currentResidenceRegion != null)
        'current_residence_region': currentResidenceRegion,
      if (currentResidenceAddress != null)
        'current_residence_address': currentResidenceAddress,
      if (currentResidenceType != null)
        'current_residence_type': currentResidenceType,
      if (acadimicLevel != null) 'acadimic_level': acadimicLevel,
      if (certification != null) 'certification': certification,
      if (studyAddress != null) 'study_address': studyAddress,
      if (jobType != null) 'job_type': jobType,
      if (jobDescription != null) 'job_description': jobDescription,
      if (monthlySalary != null) 'monthly_salary': monthlySalary,
      if (notes != null) 'notes': notes,
      if (creationTime != null) 'creation_time': creationTime,
      if (creationLocation != null) 'creation_location': creationLocation,
    });
  }

  BeneficiarysCompanion copyWith(
      {Value<int>? id,
      Value<String?>? aidRequired,
      Value<String>? firstName,
      Value<String>? fatherName,
      Value<String>? lastName,
      Value<String?>? motherName,
      Value<String?>? nationalNumber,
      Value<Gender?>? gender,
      Value<SocialStatus>? socialStatus,
      Value<DateTime?>? birthDate,
      Value<String?>? contactNumber,
      Value<MedicalStatus?>? medicalStatus,
      Value<DisabilityStatus?>? disabilityStatus,
      Value<String?>? partnerName,
      Value<String?>? partnerNationalNum,
      Value<String?>? partnerPhoneNum,
      Value<DateTime?>? partnerBirthDate,
      Value<String?>? familybookNumber,
      Value<int?>? familyMembersNumber,
      Value<int?>? familyChildrenNumber,
      Value<bool?>? familyHasMedicalStatus,
      Value<bool?>? familyHasDisability,
      Value<ResidenceType?>? originalResidenceType,
      Value<String?>? originalResidenceAddress,
      Value<String?>? originalResidenceRegion,
      Value<ResidenceStatus?>? originalResidenceStatus,
      Value<String?>? currentResidenceRegion,
      Value<String?>? currentResidenceAddress,
      Value<CurrentResidenceType?>? currentResidenceType,
      Value<AcadimicLevel?>? acadimicLevel,
      Value<String?>? certification,
      Value<String?>? studyAddress,
      Value<JobType?>? jobType,
      Value<String?>? jobDescription,
      Value<String?>? monthlySalary,
      Value<String?>? notes,
      Value<DateTime?>? creationTime,
      Value<String?>? creationLocation}) {
    return BeneficiarysCompanion(
      id: id ?? this.id,
      aidRequired: aidRequired ?? this.aidRequired,
      firstName: firstName ?? this.firstName,
      fatherName: fatherName ?? this.fatherName,
      lastName: lastName ?? this.lastName,
      motherName: motherName ?? this.motherName,
      nationalNumber: nationalNumber ?? this.nationalNumber,
      gender: gender ?? this.gender,
      socialStatus: socialStatus ?? this.socialStatus,
      birthDate: birthDate ?? this.birthDate,
      contactNumber: contactNumber ?? this.contactNumber,
      medicalStatus: medicalStatus ?? this.medicalStatus,
      disabilityStatus: disabilityStatus ?? this.disabilityStatus,
      partnerName: partnerName ?? this.partnerName,
      partnerNationalNum: partnerNationalNum ?? this.partnerNationalNum,
      partnerPhoneNum: partnerPhoneNum ?? this.partnerPhoneNum,
      partnerBirthDate: partnerBirthDate ?? this.partnerBirthDate,
      familybookNumber: familybookNumber ?? this.familybookNumber,
      familyMembersNumber: familyMembersNumber ?? this.familyMembersNumber,
      familyChildrenNumber: familyChildrenNumber ?? this.familyChildrenNumber,
      familyHasMedicalStatus:
          familyHasMedicalStatus ?? this.familyHasMedicalStatus,
      familyHasDisability: familyHasDisability ?? this.familyHasDisability,
      originalResidenceType:
          originalResidenceType ?? this.originalResidenceType,
      originalResidenceAddress:
          originalResidenceAddress ?? this.originalResidenceAddress,
      originalResidenceRegion:
          originalResidenceRegion ?? this.originalResidenceRegion,
      originalResidenceStatus:
          originalResidenceStatus ?? this.originalResidenceStatus,
      currentResidenceRegion:
          currentResidenceRegion ?? this.currentResidenceRegion,
      currentResidenceAddress:
          currentResidenceAddress ?? this.currentResidenceAddress,
      currentResidenceType: currentResidenceType ?? this.currentResidenceType,
      acadimicLevel: acadimicLevel ?? this.acadimicLevel,
      certification: certification ?? this.certification,
      studyAddress: studyAddress ?? this.studyAddress,
      jobType: jobType ?? this.jobType,
      jobDescription: jobDescription ?? this.jobDescription,
      monthlySalary: monthlySalary ?? this.monthlySalary,
      notes: notes ?? this.notes,
      creationTime: creationTime ?? this.creationTime,
      creationLocation: creationLocation ?? this.creationLocation,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (aidRequired.present) {
      map['aid_required'] = Variable<String>(aidRequired.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (fatherName.present) {
      map['father_name'] = Variable<String>(fatherName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (motherName.present) {
      map['mother_name'] = Variable<String>(motherName.value);
    }
    if (nationalNumber.present) {
      map['national_number'] = Variable<String>(nationalNumber.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(
          $BeneficiarysTable.$convertergendern.toSql(gender.value));
    }
    if (socialStatus.present) {
      map['social_status'] = Variable<String>(
          $BeneficiarysTable.$convertersocialStatus.toSql(socialStatus.value));
    }
    if (birthDate.present) {
      map['birth_date'] = Variable<DateTime>(birthDate.value);
    }
    if (contactNumber.present) {
      map['contact_number'] = Variable<String>(contactNumber.value);
    }
    if (medicalStatus.present) {
      map['medical_status'] = Variable<String>($BeneficiarysTable
          .$convertermedicalStatusn
          .toSql(medicalStatus.value));
    }
    if (disabilityStatus.present) {
      map['disability_status'] = Variable<String>($BeneficiarysTable
          .$converterdisabilityStatusn
          .toSql(disabilityStatus.value));
    }
    if (partnerName.present) {
      map['partner_name'] = Variable<String>(partnerName.value);
    }
    if (partnerNationalNum.present) {
      map['partner_national_num'] = Variable<String>(partnerNationalNum.value);
    }
    if (partnerPhoneNum.present) {
      map['partner_phone_num'] = Variable<String>(partnerPhoneNum.value);
    }
    if (partnerBirthDate.present) {
      map['partner_birth_date'] = Variable<DateTime>(partnerBirthDate.value);
    }
    if (familybookNumber.present) {
      map['familybook_number'] = Variable<String>(familybookNumber.value);
    }
    if (familyMembersNumber.present) {
      map['family_members_number'] = Variable<int>(familyMembersNumber.value);
    }
    if (familyChildrenNumber.present) {
      map['family_children_number'] = Variable<int>(familyChildrenNumber.value);
    }
    if (familyHasMedicalStatus.present) {
      map['family_has_medical_status'] =
          Variable<bool>(familyHasMedicalStatus.value);
    }
    if (familyHasDisability.present) {
      map['family_has_disability'] = Variable<bool>(familyHasDisability.value);
    }
    if (originalResidenceType.present) {
      map['original_residence_type'] = Variable<String>($BeneficiarysTable
          .$converteroriginalResidenceTypen
          .toSql(originalResidenceType.value));
    }
    if (originalResidenceAddress.present) {
      map['original_residence_address'] =
          Variable<String>(originalResidenceAddress.value);
    }
    if (originalResidenceRegion.present) {
      map['original_residence_region'] =
          Variable<String>(originalResidenceRegion.value);
    }
    if (originalResidenceStatus.present) {
      map['original_residence_status'] = Variable<String>($BeneficiarysTable
          .$converteroriginalResidenceStatusn
          .toSql(originalResidenceStatus.value));
    }
    if (currentResidenceRegion.present) {
      map['current_residence_region'] =
          Variable<String>(currentResidenceRegion.value);
    }
    if (currentResidenceAddress.present) {
      map['current_residence_address'] =
          Variable<String>(currentResidenceAddress.value);
    }
    if (currentResidenceType.present) {
      map['current_residence_type'] = Variable<String>($BeneficiarysTable
          .$convertercurrentResidenceTypen
          .toSql(currentResidenceType.value));
    }
    if (acadimicLevel.present) {
      map['acadimic_level'] = Variable<String>($BeneficiarysTable
          .$converteracadimicLeveln
          .toSql(acadimicLevel.value));
    }
    if (certification.present) {
      map['certification'] = Variable<String>(certification.value);
    }
    if (studyAddress.present) {
      map['study_address'] = Variable<String>(studyAddress.value);
    }
    if (jobType.present) {
      map['job_type'] = Variable<String>(
          $BeneficiarysTable.$converterjobTypen.toSql(jobType.value));
    }
    if (jobDescription.present) {
      map['job_description'] = Variable<String>(jobDescription.value);
    }
    if (monthlySalary.present) {
      map['monthly_salary'] = Variable<String>(monthlySalary.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (creationTime.present) {
      map['creation_time'] = Variable<DateTime>(creationTime.value);
    }
    if (creationLocation.present) {
      map['creation_location'] = Variable<String>(creationLocation.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('BeneficiarysCompanion(')
          ..write('id: $id, ')
          ..write('aidRequired: $aidRequired, ')
          ..write('firstName: $firstName, ')
          ..write('fatherName: $fatherName, ')
          ..write('lastName: $lastName, ')
          ..write('motherName: $motherName, ')
          ..write('nationalNumber: $nationalNumber, ')
          ..write('gender: $gender, ')
          ..write('socialStatus: $socialStatus, ')
          ..write('birthDate: $birthDate, ')
          ..write('contactNumber: $contactNumber, ')
          ..write('medicalStatus: $medicalStatus, ')
          ..write('disabilityStatus: $disabilityStatus, ')
          ..write('partnerName: $partnerName, ')
          ..write('partnerNationalNum: $partnerNationalNum, ')
          ..write('partnerPhoneNum: $partnerPhoneNum, ')
          ..write('partnerBirthDate: $partnerBirthDate, ')
          ..write('familybookNumber: $familybookNumber, ')
          ..write('familyMembersNumber: $familyMembersNumber, ')
          ..write('familyChildrenNumber: $familyChildrenNumber, ')
          ..write('familyHasMedicalStatus: $familyHasMedicalStatus, ')
          ..write('familyHasDisability: $familyHasDisability, ')
          ..write('originalResidenceType: $originalResidenceType, ')
          ..write('originalResidenceAddress: $originalResidenceAddress, ')
          ..write('originalResidenceRegion: $originalResidenceRegion, ')
          ..write('originalResidenceStatus: $originalResidenceStatus, ')
          ..write('currentResidenceRegion: $currentResidenceRegion, ')
          ..write('currentResidenceAddress: $currentResidenceAddress, ')
          ..write('currentResidenceType: $currentResidenceType, ')
          ..write('acadimicLevel: $acadimicLevel, ')
          ..write('certification: $certification, ')
          ..write('studyAddress: $studyAddress, ')
          ..write('jobType: $jobType, ')
          ..write('jobDescription: $jobDescription, ')
          ..write('monthlySalary: $monthlySalary, ')
          ..write('notes: $notes, ')
          ..write('creationTime: $creationTime, ')
          ..write('creationLocation: $creationLocation')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $BeneficiarysTable beneficiarys = $BeneficiarysTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [beneficiarys];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}

typedef $$BeneficiarysTableCreateCompanionBuilder = BeneficiarysCompanion
    Function({
  Value<int> id,
  Value<String?> aidRequired,
  required String firstName,
  required String fatherName,
  required String lastName,
  Value<String?> motherName,
  Value<String?> nationalNumber,
  Value<Gender?> gender,
  required SocialStatus socialStatus,
  Value<DateTime?> birthDate,
  Value<String?> contactNumber,
  Value<MedicalStatus?> medicalStatus,
  Value<DisabilityStatus?> disabilityStatus,
  Value<String?> partnerName,
  Value<String?> partnerNationalNum,
  Value<String?> partnerPhoneNum,
  Value<DateTime?> partnerBirthDate,
  Value<String?> familybookNumber,
  Value<int?> familyMembersNumber,
  Value<int?> familyChildrenNumber,
  Value<bool?> familyHasMedicalStatus,
  Value<bool?> familyHasDisability,
  Value<ResidenceType?> originalResidenceType,
  Value<String?> originalResidenceAddress,
  Value<String?> originalResidenceRegion,
  Value<ResidenceStatus?> originalResidenceStatus,
  Value<String?> currentResidenceRegion,
  Value<String?> currentResidenceAddress,
  Value<CurrentResidenceType?> currentResidenceType,
  Value<AcadimicLevel?> acadimicLevel,
  Value<String?> certification,
  Value<String?> studyAddress,
  Value<JobType?> jobType,
  Value<String?> jobDescription,
  Value<String?> monthlySalary,
  Value<String?> notes,
  Value<DateTime?> creationTime,
  Value<String?> creationLocation,
});
typedef $$BeneficiarysTableUpdateCompanionBuilder = BeneficiarysCompanion
    Function({
  Value<int> id,
  Value<String?> aidRequired,
  Value<String> firstName,
  Value<String> fatherName,
  Value<String> lastName,
  Value<String?> motherName,
  Value<String?> nationalNumber,
  Value<Gender?> gender,
  Value<SocialStatus> socialStatus,
  Value<DateTime?> birthDate,
  Value<String?> contactNumber,
  Value<MedicalStatus?> medicalStatus,
  Value<DisabilityStatus?> disabilityStatus,
  Value<String?> partnerName,
  Value<String?> partnerNationalNum,
  Value<String?> partnerPhoneNum,
  Value<DateTime?> partnerBirthDate,
  Value<String?> familybookNumber,
  Value<int?> familyMembersNumber,
  Value<int?> familyChildrenNumber,
  Value<bool?> familyHasMedicalStatus,
  Value<bool?> familyHasDisability,
  Value<ResidenceType?> originalResidenceType,
  Value<String?> originalResidenceAddress,
  Value<String?> originalResidenceRegion,
  Value<ResidenceStatus?> originalResidenceStatus,
  Value<String?> currentResidenceRegion,
  Value<String?> currentResidenceAddress,
  Value<CurrentResidenceType?> currentResidenceType,
  Value<AcadimicLevel?> acadimicLevel,
  Value<String?> certification,
  Value<String?> studyAddress,
  Value<JobType?> jobType,
  Value<String?> jobDescription,
  Value<String?> monthlySalary,
  Value<String?> notes,
  Value<DateTime?> creationTime,
  Value<String?> creationLocation,
});

class $$BeneficiarysTableFilterComposer
    extends Composer<_$AppDatabase, $BeneficiarysTable> {
  $$BeneficiarysTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get aidRequired => $composableBuilder(
      column: $table.aidRequired, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get firstName => $composableBuilder(
      column: $table.firstName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get fatherName => $composableBuilder(
      column: $table.fatherName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lastName => $composableBuilder(
      column: $table.lastName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get motherName => $composableBuilder(
      column: $table.motherName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nationalNumber => $composableBuilder(
      column: $table.nationalNumber,
      builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<Gender?, Gender, String> get gender =>
      $composableBuilder(
          column: $table.gender,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<SocialStatus, SocialStatus, String>
      get socialStatus => $composableBuilder(
          column: $table.socialStatus,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<DateTime> get birthDate => $composableBuilder(
      column: $table.birthDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contactNumber => $composableBuilder(
      column: $table.contactNumber, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<MedicalStatus?, MedicalStatus, String>
      get medicalStatus => $composableBuilder(
          column: $table.medicalStatus,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<DisabilityStatus?, DisabilityStatus, String>
      get disabilityStatus => $composableBuilder(
          column: $table.disabilityStatus,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get partnerName => $composableBuilder(
      column: $table.partnerName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get partnerNationalNum => $composableBuilder(
      column: $table.partnerNationalNum,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get partnerPhoneNum => $composableBuilder(
      column: $table.partnerPhoneNum,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get partnerBirthDate => $composableBuilder(
      column: $table.partnerBirthDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get familybookNumber => $composableBuilder(
      column: $table.familybookNumber,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get familyMembersNumber => $composableBuilder(
      column: $table.familyMembersNumber,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get familyChildrenNumber => $composableBuilder(
      column: $table.familyChildrenNumber,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get familyHasMedicalStatus => $composableBuilder(
      column: $table.familyHasMedicalStatus,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get familyHasDisability => $composableBuilder(
      column: $table.familyHasDisability,
      builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<ResidenceType?, ResidenceType, String>
      get originalResidenceType => $composableBuilder(
          column: $table.originalResidenceType,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get originalResidenceAddress => $composableBuilder(
      column: $table.originalResidenceAddress,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get originalResidenceRegion => $composableBuilder(
      column: $table.originalResidenceRegion,
      builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<ResidenceStatus?, ResidenceStatus, String>
      get originalResidenceStatus => $composableBuilder(
          column: $table.originalResidenceStatus,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get currentResidenceRegion => $composableBuilder(
      column: $table.currentResidenceRegion,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get currentResidenceAddress => $composableBuilder(
      column: $table.currentResidenceAddress,
      builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<CurrentResidenceType?, CurrentResidenceType,
          String>
      get currentResidenceType => $composableBuilder(
          column: $table.currentResidenceType,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnWithTypeConverterFilters<AcadimicLevel?, AcadimicLevel, String>
      get acadimicLevel => $composableBuilder(
          column: $table.acadimicLevel,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get certification => $composableBuilder(
      column: $table.certification, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get studyAddress => $composableBuilder(
      column: $table.studyAddress, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<JobType?, JobType, String> get jobType =>
      $composableBuilder(
          column: $table.jobType,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get jobDescription => $composableBuilder(
      column: $table.jobDescription,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get monthlySalary => $composableBuilder(
      column: $table.monthlySalary, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get creationTime => $composableBuilder(
      column: $table.creationTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get creationLocation => $composableBuilder(
      column: $table.creationLocation,
      builder: (column) => ColumnFilters(column));
}

class $$BeneficiarysTableOrderingComposer
    extends Composer<_$AppDatabase, $BeneficiarysTable> {
  $$BeneficiarysTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get aidRequired => $composableBuilder(
      column: $table.aidRequired, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get firstName => $composableBuilder(
      column: $table.firstName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get fatherName => $composableBuilder(
      column: $table.fatherName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lastName => $composableBuilder(
      column: $table.lastName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get motherName => $composableBuilder(
      column: $table.motherName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nationalNumber => $composableBuilder(
      column: $table.nationalNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get gender => $composableBuilder(
      column: $table.gender, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get socialStatus => $composableBuilder(
      column: $table.socialStatus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get birthDate => $composableBuilder(
      column: $table.birthDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contactNumber => $composableBuilder(
      column: $table.contactNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get medicalStatus => $composableBuilder(
      column: $table.medicalStatus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get disabilityStatus => $composableBuilder(
      column: $table.disabilityStatus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get partnerName => $composableBuilder(
      column: $table.partnerName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get partnerNationalNum => $composableBuilder(
      column: $table.partnerNationalNum,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get partnerPhoneNum => $composableBuilder(
      column: $table.partnerPhoneNum,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get partnerBirthDate => $composableBuilder(
      column: $table.partnerBirthDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get familybookNumber => $composableBuilder(
      column: $table.familybookNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get familyMembersNumber => $composableBuilder(
      column: $table.familyMembersNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get familyChildrenNumber => $composableBuilder(
      column: $table.familyChildrenNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get familyHasMedicalStatus => $composableBuilder(
      column: $table.familyHasMedicalStatus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get familyHasDisability => $composableBuilder(
      column: $table.familyHasDisability,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get originalResidenceType => $composableBuilder(
      column: $table.originalResidenceType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get originalResidenceAddress => $composableBuilder(
      column: $table.originalResidenceAddress,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get originalResidenceRegion => $composableBuilder(
      column: $table.originalResidenceRegion,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get originalResidenceStatus => $composableBuilder(
      column: $table.originalResidenceStatus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get currentResidenceRegion => $composableBuilder(
      column: $table.currentResidenceRegion,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get currentResidenceAddress => $composableBuilder(
      column: $table.currentResidenceAddress,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get currentResidenceType => $composableBuilder(
      column: $table.currentResidenceType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get acadimicLevel => $composableBuilder(
      column: $table.acadimicLevel,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get certification => $composableBuilder(
      column: $table.certification,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get studyAddress => $composableBuilder(
      column: $table.studyAddress,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get jobType => $composableBuilder(
      column: $table.jobType, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get jobDescription => $composableBuilder(
      column: $table.jobDescription,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get monthlySalary => $composableBuilder(
      column: $table.monthlySalary,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get creationTime => $composableBuilder(
      column: $table.creationTime,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get creationLocation => $composableBuilder(
      column: $table.creationLocation,
      builder: (column) => ColumnOrderings(column));
}

class $$BeneficiarysTableAnnotationComposer
    extends Composer<_$AppDatabase, $BeneficiarysTable> {
  $$BeneficiarysTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get aidRequired => $composableBuilder(
      column: $table.aidRequired, builder: (column) => column);

  GeneratedColumn<String> get firstName =>
      $composableBuilder(column: $table.firstName, builder: (column) => column);

  GeneratedColumn<String> get fatherName => $composableBuilder(
      column: $table.fatherName, builder: (column) => column);

  GeneratedColumn<String> get lastName =>
      $composableBuilder(column: $table.lastName, builder: (column) => column);

  GeneratedColumn<String> get motherName => $composableBuilder(
      column: $table.motherName, builder: (column) => column);

  GeneratedColumn<String> get nationalNumber => $composableBuilder(
      column: $table.nationalNumber, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Gender?, String> get gender =>
      $composableBuilder(column: $table.gender, builder: (column) => column);

  GeneratedColumnWithTypeConverter<SocialStatus, String> get socialStatus =>
      $composableBuilder(
          column: $table.socialStatus, builder: (column) => column);

  GeneratedColumn<DateTime> get birthDate =>
      $composableBuilder(column: $table.birthDate, builder: (column) => column);

  GeneratedColumn<String> get contactNumber => $composableBuilder(
      column: $table.contactNumber, builder: (column) => column);

  GeneratedColumnWithTypeConverter<MedicalStatus?, String> get medicalStatus =>
      $composableBuilder(
          column: $table.medicalStatus, builder: (column) => column);

  GeneratedColumnWithTypeConverter<DisabilityStatus?, String>
      get disabilityStatus => $composableBuilder(
          column: $table.disabilityStatus, builder: (column) => column);

  GeneratedColumn<String> get partnerName => $composableBuilder(
      column: $table.partnerName, builder: (column) => column);

  GeneratedColumn<String> get partnerNationalNum => $composableBuilder(
      column: $table.partnerNationalNum, builder: (column) => column);

  GeneratedColumn<String> get partnerPhoneNum => $composableBuilder(
      column: $table.partnerPhoneNum, builder: (column) => column);

  GeneratedColumn<DateTime> get partnerBirthDate => $composableBuilder(
      column: $table.partnerBirthDate, builder: (column) => column);

  GeneratedColumn<String> get familybookNumber => $composableBuilder(
      column: $table.familybookNumber, builder: (column) => column);

  GeneratedColumn<int> get familyMembersNumber => $composableBuilder(
      column: $table.familyMembersNumber, builder: (column) => column);

  GeneratedColumn<int> get familyChildrenNumber => $composableBuilder(
      column: $table.familyChildrenNumber, builder: (column) => column);

  GeneratedColumn<bool> get familyHasMedicalStatus => $composableBuilder(
      column: $table.familyHasMedicalStatus, builder: (column) => column);

  GeneratedColumn<bool> get familyHasDisability => $composableBuilder(
      column: $table.familyHasDisability, builder: (column) => column);

  GeneratedColumnWithTypeConverter<ResidenceType?, String>
      get originalResidenceType => $composableBuilder(
          column: $table.originalResidenceType, builder: (column) => column);

  GeneratedColumn<String> get originalResidenceAddress => $composableBuilder(
      column: $table.originalResidenceAddress, builder: (column) => column);

  GeneratedColumn<String> get originalResidenceRegion => $composableBuilder(
      column: $table.originalResidenceRegion, builder: (column) => column);

  GeneratedColumnWithTypeConverter<ResidenceStatus?, String>
      get originalResidenceStatus => $composableBuilder(
          column: $table.originalResidenceStatus, builder: (column) => column);

  GeneratedColumn<String> get currentResidenceRegion => $composableBuilder(
      column: $table.currentResidenceRegion, builder: (column) => column);

  GeneratedColumn<String> get currentResidenceAddress => $composableBuilder(
      column: $table.currentResidenceAddress, builder: (column) => column);

  GeneratedColumnWithTypeConverter<CurrentResidenceType?, String>
      get currentResidenceType => $composableBuilder(
          column: $table.currentResidenceType, builder: (column) => column);

  GeneratedColumnWithTypeConverter<AcadimicLevel?, String> get acadimicLevel =>
      $composableBuilder(
          column: $table.acadimicLevel, builder: (column) => column);

  GeneratedColumn<String> get certification => $composableBuilder(
      column: $table.certification, builder: (column) => column);

  GeneratedColumn<String> get studyAddress => $composableBuilder(
      column: $table.studyAddress, builder: (column) => column);

  GeneratedColumnWithTypeConverter<JobType?, String> get jobType =>
      $composableBuilder(column: $table.jobType, builder: (column) => column);

  GeneratedColumn<String> get jobDescription => $composableBuilder(
      column: $table.jobDescription, builder: (column) => column);

  GeneratedColumn<String> get monthlySalary => $composableBuilder(
      column: $table.monthlySalary, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<DateTime> get creationTime => $composableBuilder(
      column: $table.creationTime, builder: (column) => column);

  GeneratedColumn<String> get creationLocation => $composableBuilder(
      column: $table.creationLocation, builder: (column) => column);
}

class $$BeneficiarysTableTableManager extends RootTableManager<
    _$AppDatabase,
    $BeneficiarysTable,
    Beneficiary,
    $$BeneficiarysTableFilterComposer,
    $$BeneficiarysTableOrderingComposer,
    $$BeneficiarysTableAnnotationComposer,
    $$BeneficiarysTableCreateCompanionBuilder,
    $$BeneficiarysTableUpdateCompanionBuilder,
    (
      Beneficiary,
      BaseReferences<_$AppDatabase, $BeneficiarysTable, Beneficiary>
    ),
    Beneficiary,
    PrefetchHooks Function()> {
  $$BeneficiarysTableTableManager(_$AppDatabase db, $BeneficiarysTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$BeneficiarysTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$BeneficiarysTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$BeneficiarysTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> aidRequired = const Value.absent(),
            Value<String> firstName = const Value.absent(),
            Value<String> fatherName = const Value.absent(),
            Value<String> lastName = const Value.absent(),
            Value<String?> motherName = const Value.absent(),
            Value<String?> nationalNumber = const Value.absent(),
            Value<Gender?> gender = const Value.absent(),
            Value<SocialStatus> socialStatus = const Value.absent(),
            Value<DateTime?> birthDate = const Value.absent(),
            Value<String?> contactNumber = const Value.absent(),
            Value<MedicalStatus?> medicalStatus = const Value.absent(),
            Value<DisabilityStatus?> disabilityStatus = const Value.absent(),
            Value<String?> partnerName = const Value.absent(),
            Value<String?> partnerNationalNum = const Value.absent(),
            Value<String?> partnerPhoneNum = const Value.absent(),
            Value<DateTime?> partnerBirthDate = const Value.absent(),
            Value<String?> familybookNumber = const Value.absent(),
            Value<int?> familyMembersNumber = const Value.absent(),
            Value<int?> familyChildrenNumber = const Value.absent(),
            Value<bool?> familyHasMedicalStatus = const Value.absent(),
            Value<bool?> familyHasDisability = const Value.absent(),
            Value<ResidenceType?> originalResidenceType = const Value.absent(),
            Value<String?> originalResidenceAddress = const Value.absent(),
            Value<String?> originalResidenceRegion = const Value.absent(),
            Value<ResidenceStatus?> originalResidenceStatus =
                const Value.absent(),
            Value<String?> currentResidenceRegion = const Value.absent(),
            Value<String?> currentResidenceAddress = const Value.absent(),
            Value<CurrentResidenceType?> currentResidenceType =
                const Value.absent(),
            Value<AcadimicLevel?> acadimicLevel = const Value.absent(),
            Value<String?> certification = const Value.absent(),
            Value<String?> studyAddress = const Value.absent(),
            Value<JobType?> jobType = const Value.absent(),
            Value<String?> jobDescription = const Value.absent(),
            Value<String?> monthlySalary = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<DateTime?> creationTime = const Value.absent(),
            Value<String?> creationLocation = const Value.absent(),
          }) =>
              BeneficiarysCompanion(
            id: id,
            aidRequired: aidRequired,
            firstName: firstName,
            fatherName: fatherName,
            lastName: lastName,
            motherName: motherName,
            nationalNumber: nationalNumber,
            gender: gender,
            socialStatus: socialStatus,
            birthDate: birthDate,
            contactNumber: contactNumber,
            medicalStatus: medicalStatus,
            disabilityStatus: disabilityStatus,
            partnerName: partnerName,
            partnerNationalNum: partnerNationalNum,
            partnerPhoneNum: partnerPhoneNum,
            partnerBirthDate: partnerBirthDate,
            familybookNumber: familybookNumber,
            familyMembersNumber: familyMembersNumber,
            familyChildrenNumber: familyChildrenNumber,
            familyHasMedicalStatus: familyHasMedicalStatus,
            familyHasDisability: familyHasDisability,
            originalResidenceType: originalResidenceType,
            originalResidenceAddress: originalResidenceAddress,
            originalResidenceRegion: originalResidenceRegion,
            originalResidenceStatus: originalResidenceStatus,
            currentResidenceRegion: currentResidenceRegion,
            currentResidenceAddress: currentResidenceAddress,
            currentResidenceType: currentResidenceType,
            acadimicLevel: acadimicLevel,
            certification: certification,
            studyAddress: studyAddress,
            jobType: jobType,
            jobDescription: jobDescription,
            monthlySalary: monthlySalary,
            notes: notes,
            creationTime: creationTime,
            creationLocation: creationLocation,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> aidRequired = const Value.absent(),
            required String firstName,
            required String fatherName,
            required String lastName,
            Value<String?> motherName = const Value.absent(),
            Value<String?> nationalNumber = const Value.absent(),
            Value<Gender?> gender = const Value.absent(),
            required SocialStatus socialStatus,
            Value<DateTime?> birthDate = const Value.absent(),
            Value<String?> contactNumber = const Value.absent(),
            Value<MedicalStatus?> medicalStatus = const Value.absent(),
            Value<DisabilityStatus?> disabilityStatus = const Value.absent(),
            Value<String?> partnerName = const Value.absent(),
            Value<String?> partnerNationalNum = const Value.absent(),
            Value<String?> partnerPhoneNum = const Value.absent(),
            Value<DateTime?> partnerBirthDate = const Value.absent(),
            Value<String?> familybookNumber = const Value.absent(),
            Value<int?> familyMembersNumber = const Value.absent(),
            Value<int?> familyChildrenNumber = const Value.absent(),
            Value<bool?> familyHasMedicalStatus = const Value.absent(),
            Value<bool?> familyHasDisability = const Value.absent(),
            Value<ResidenceType?> originalResidenceType = const Value.absent(),
            Value<String?> originalResidenceAddress = const Value.absent(),
            Value<String?> originalResidenceRegion = const Value.absent(),
            Value<ResidenceStatus?> originalResidenceStatus =
                const Value.absent(),
            Value<String?> currentResidenceRegion = const Value.absent(),
            Value<String?> currentResidenceAddress = const Value.absent(),
            Value<CurrentResidenceType?> currentResidenceType =
                const Value.absent(),
            Value<AcadimicLevel?> acadimicLevel = const Value.absent(),
            Value<String?> certification = const Value.absent(),
            Value<String?> studyAddress = const Value.absent(),
            Value<JobType?> jobType = const Value.absent(),
            Value<String?> jobDescription = const Value.absent(),
            Value<String?> monthlySalary = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<DateTime?> creationTime = const Value.absent(),
            Value<String?> creationLocation = const Value.absent(),
          }) =>
              BeneficiarysCompanion.insert(
            id: id,
            aidRequired: aidRequired,
            firstName: firstName,
            fatherName: fatherName,
            lastName: lastName,
            motherName: motherName,
            nationalNumber: nationalNumber,
            gender: gender,
            socialStatus: socialStatus,
            birthDate: birthDate,
            contactNumber: contactNumber,
            medicalStatus: medicalStatus,
            disabilityStatus: disabilityStatus,
            partnerName: partnerName,
            partnerNationalNum: partnerNationalNum,
            partnerPhoneNum: partnerPhoneNum,
            partnerBirthDate: partnerBirthDate,
            familybookNumber: familybookNumber,
            familyMembersNumber: familyMembersNumber,
            familyChildrenNumber: familyChildrenNumber,
            familyHasMedicalStatus: familyHasMedicalStatus,
            familyHasDisability: familyHasDisability,
            originalResidenceType: originalResidenceType,
            originalResidenceAddress: originalResidenceAddress,
            originalResidenceRegion: originalResidenceRegion,
            originalResidenceStatus: originalResidenceStatus,
            currentResidenceRegion: currentResidenceRegion,
            currentResidenceAddress: currentResidenceAddress,
            currentResidenceType: currentResidenceType,
            acadimicLevel: acadimicLevel,
            certification: certification,
            studyAddress: studyAddress,
            jobType: jobType,
            jobDescription: jobDescription,
            monthlySalary: monthlySalary,
            notes: notes,
            creationTime: creationTime,
            creationLocation: creationLocation,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$BeneficiarysTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $BeneficiarysTable,
    Beneficiary,
    $$BeneficiarysTableFilterComposer,
    $$BeneficiarysTableOrderingComposer,
    $$BeneficiarysTableAnnotationComposer,
    $$BeneficiarysTableCreateCompanionBuilder,
    $$BeneficiarysTableUpdateCompanionBuilder,
    (
      Beneficiary,
      BaseReferences<_$AppDatabase, $BeneficiarysTable, Beneficiary>
    ),
    Beneficiary,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$BeneficiarysTableTableManager get beneficiarys =>
      $$BeneficiarysTableTableManager(_db, _db.beneficiarys);
}
