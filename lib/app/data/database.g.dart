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
  static const VerificationMeta _nationalNumberMeta =
      const VerificationMeta('nationalNumber');
  @override
  late final GeneratedColumn<String> nationalNumber = GeneratedColumn<String>(
      'national_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _motherNameMeta =
      const VerificationMeta('motherName');
  @override
  late final GeneratedColumn<String> motherName = GeneratedColumn<String>(
      'mother_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _contactNumberMeta =
      const VerificationMeta('contactNumber');
  @override
  late final GeneratedColumn<String> contactNumber = GeneratedColumn<String>(
      'contact_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _genderMeta = const VerificationMeta('gender');
  @override
  late final GeneratedColumnWithTypeConverter<Gender?, String> gender =
      GeneratedColumn<String>('gender', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<Gender?>($BeneficiarysTable.$convertergendern);
  static const VerificationMeta _birthDateMeta =
      const VerificationMeta('birthDate');
  @override
  late final GeneratedColumn<DateTime> birthDate = GeneratedColumn<DateTime>(
      'birth_date', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _medicalStatusMeta =
      const VerificationMeta('medicalStatus');
  @override
  late final GeneratedColumn<String> medicalStatus = GeneratedColumn<String>(
      'medical_status', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _hasDisabilityMeta =
      const VerificationMeta('hasDisability');
  @override
  late final GeneratedColumn<bool> hasDisability = GeneratedColumn<bool>(
      'has_disability', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("has_disability" IN (0, 1))'));
  static const VerificationMeta _socialStatusMeta =
      const VerificationMeta('socialStatus');
  @override
  late final GeneratedColumnWithTypeConverter<SocialStatus, String>
      socialStatus = GeneratedColumn<String>(
              'social_status', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<SocialStatus>(
              $BeneficiarysTable.$convertersocialStatus);
  static const VerificationMeta _familybookNumberMeta =
      const VerificationMeta('familybookNumber');
  @override
  late final GeneratedColumn<String> familybookNumber = GeneratedColumn<String>(
      'familybook_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _familyMembersNumberMeta =
      const VerificationMeta('familyMembersNumber');
  @override
  late final GeneratedColumn<String> familyMembersNumber =
      GeneratedColumn<String>('family_members_number', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _familyMedicalStatusMeta =
      const VerificationMeta('familyMedicalStatus');
  @override
  late final GeneratedColumn<String> familyMedicalStatus =
      GeneratedColumn<String>('family_medical_status', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _familyHasDisabilityMeta =
      const VerificationMeta('familyHasDisability');
  @override
  late final GeneratedColumn<bool> familyHasDisability = GeneratedColumn<bool>(
      'family_has_disability', aliasedName, true,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("family_has_disability" IN (0, 1))'));
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
  static const VerificationMeta _partnerBirthDateMeta =
      const VerificationMeta('partnerBirthDate');
  @override
  late final GeneratedColumn<DateTime> partnerBirthDate =
      GeneratedColumn<DateTime>('partner_birth_date', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _partnerPhoneNumMeta =
      const VerificationMeta('partnerPhoneNum');
  @override
  late final GeneratedColumn<String> partnerPhoneNum = GeneratedColumn<String>(
      'partner_phone_num', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _mainResidenceMeta =
      const VerificationMeta('mainResidence');
  @override
  late final GeneratedColumn<String> mainResidence = GeneratedColumn<String>(
      'main_residence', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _currentResidenceMeta =
      const VerificationMeta('currentResidence');
  @override
  late final GeneratedColumn<String> currentResidence = GeneratedColumn<String>(
      'current_residence', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _residenceTypeMeta =
      const VerificationMeta('residenceType');
  @override
  late final GeneratedColumn<String> residenceType = GeneratedColumn<String>(
      'residence_type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _residenceStatusMeta =
      const VerificationMeta('residenceStatus');
  @override
  late final GeneratedColumn<String> residenceStatus = GeneratedColumn<String>(
      'residence_status', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _shelterNameMeta =
      const VerificationMeta('shelterName');
  @override
  late final GeneratedColumn<String> shelterName = GeneratedColumn<String>(
      'shelter_name', aliasedName, true,
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
        firstName,
        fatherName,
        lastName,
        nationalNumber,
        motherName,
        contactNumber,
        gender,
        birthDate,
        medicalStatus,
        hasDisability,
        socialStatus,
        familybookNumber,
        familyMembersNumber,
        familyMedicalStatus,
        familyHasDisability,
        partnerName,
        partnerNationalNum,
        partnerBirthDate,
        partnerPhoneNum,
        mainResidence,
        currentResidence,
        residenceType,
        residenceStatus,
        shelterName,
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
    if (data.containsKey('national_number')) {
      context.handle(
          _nationalNumberMeta,
          nationalNumber.isAcceptableOrUnknown(
              data['national_number']!, _nationalNumberMeta));
    }
    if (data.containsKey('mother_name')) {
      context.handle(
          _motherNameMeta,
          motherName.isAcceptableOrUnknown(
              data['mother_name']!, _motherNameMeta));
    }
    if (data.containsKey('contact_number')) {
      context.handle(
          _contactNumberMeta,
          contactNumber.isAcceptableOrUnknown(
              data['contact_number']!, _contactNumberMeta));
    }
    context.handle(_genderMeta, const VerificationResult.success());
    if (data.containsKey('birth_date')) {
      context.handle(_birthDateMeta,
          birthDate.isAcceptableOrUnknown(data['birth_date']!, _birthDateMeta));
    }
    if (data.containsKey('medical_status')) {
      context.handle(
          _medicalStatusMeta,
          medicalStatus.isAcceptableOrUnknown(
              data['medical_status']!, _medicalStatusMeta));
    }
    if (data.containsKey('has_disability')) {
      context.handle(
          _hasDisabilityMeta,
          hasDisability.isAcceptableOrUnknown(
              data['has_disability']!, _hasDisabilityMeta));
    }
    context.handle(_socialStatusMeta, const VerificationResult.success());
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
    if (data.containsKey('family_medical_status')) {
      context.handle(
          _familyMedicalStatusMeta,
          familyMedicalStatus.isAcceptableOrUnknown(
              data['family_medical_status']!, _familyMedicalStatusMeta));
    }
    if (data.containsKey('family_has_disability')) {
      context.handle(
          _familyHasDisabilityMeta,
          familyHasDisability.isAcceptableOrUnknown(
              data['family_has_disability']!, _familyHasDisabilityMeta));
    }
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
    if (data.containsKey('partner_birth_date')) {
      context.handle(
          _partnerBirthDateMeta,
          partnerBirthDate.isAcceptableOrUnknown(
              data['partner_birth_date']!, _partnerBirthDateMeta));
    }
    if (data.containsKey('partner_phone_num')) {
      context.handle(
          _partnerPhoneNumMeta,
          partnerPhoneNum.isAcceptableOrUnknown(
              data['partner_phone_num']!, _partnerPhoneNumMeta));
    }
    if (data.containsKey('main_residence')) {
      context.handle(
          _mainResidenceMeta,
          mainResidence.isAcceptableOrUnknown(
              data['main_residence']!, _mainResidenceMeta));
    }
    if (data.containsKey('current_residence')) {
      context.handle(
          _currentResidenceMeta,
          currentResidence.isAcceptableOrUnknown(
              data['current_residence']!, _currentResidenceMeta));
    }
    if (data.containsKey('residence_type')) {
      context.handle(
          _residenceTypeMeta,
          residenceType.isAcceptableOrUnknown(
              data['residence_type']!, _residenceTypeMeta));
    }
    if (data.containsKey('residence_status')) {
      context.handle(
          _residenceStatusMeta,
          residenceStatus.isAcceptableOrUnknown(
              data['residence_status']!, _residenceStatusMeta));
    }
    if (data.containsKey('shelter_name')) {
      context.handle(
          _shelterNameMeta,
          shelterName.isAcceptableOrUnknown(
              data['shelter_name']!, _shelterNameMeta));
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
      firstName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}first_name'])!,
      fatherName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}father_name'])!,
      lastName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}last_name'])!,
      nationalNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}national_number']),
      motherName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mother_name']),
      contactNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}contact_number']),
      gender: $BeneficiarysTable.$convertergendern.fromSql(attachedDatabase
          .typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gender'])),
      birthDate: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}birth_date']),
      medicalStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}medical_status']),
      hasDisability: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}has_disability']),
      socialStatus: $BeneficiarysTable.$convertersocialStatus.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}social_status'])!),
      familybookNumber: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}familybook_number']),
      familyMembersNumber: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}family_members_number']),
      familyMedicalStatus: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}family_medical_status']),
      familyHasDisability: attachedDatabase.typeMapping.read(
          DriftSqlType.bool, data['${effectivePrefix}family_has_disability']),
      partnerName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}partner_name']),
      partnerNationalNum: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}partner_national_num']),
      partnerBirthDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}partner_birth_date']),
      partnerPhoneNum: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}partner_phone_num']),
      mainResidence: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}main_residence']),
      currentResidence: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}current_residence']),
      residenceType: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}residence_type']),
      residenceStatus: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}residence_status']),
      shelterName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}shelter_name']),
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
}

class Beneficiary extends DataClass implements Insertable<Beneficiary> {
  final int id;
  final String firstName;
  final String fatherName;
  final String lastName;
  final String? nationalNumber;
  final String? motherName;
  final String? contactNumber;
  final Gender? gender;
  final DateTime? birthDate;
  final String? medicalStatus;
  final bool? hasDisability;
  final SocialStatus socialStatus;
  final String? familybookNumber;
  final String? familyMembersNumber;
  final String? familyMedicalStatus;
  final bool? familyHasDisability;
  final String? partnerName;
  final String? partnerNationalNum;
  final DateTime? partnerBirthDate;
  final String? partnerPhoneNum;
  final String? mainResidence;
  final String? currentResidence;
  final String? residenceType;
  final String? residenceStatus;
  final String? shelterName;
  final String? notes;
  final DateTime? creationTime;
  final String? creationLocation;
  const Beneficiary(
      {required this.id,
      required this.firstName,
      required this.fatherName,
      required this.lastName,
      this.nationalNumber,
      this.motherName,
      this.contactNumber,
      this.gender,
      this.birthDate,
      this.medicalStatus,
      this.hasDisability,
      required this.socialStatus,
      this.familybookNumber,
      this.familyMembersNumber,
      this.familyMedicalStatus,
      this.familyHasDisability,
      this.partnerName,
      this.partnerNationalNum,
      this.partnerBirthDate,
      this.partnerPhoneNum,
      this.mainResidence,
      this.currentResidence,
      this.residenceType,
      this.residenceStatus,
      this.shelterName,
      this.notes,
      this.creationTime,
      this.creationLocation});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['first_name'] = Variable<String>(firstName);
    map['father_name'] = Variable<String>(fatherName);
    map['last_name'] = Variable<String>(lastName);
    if (!nullToAbsent || nationalNumber != null) {
      map['national_number'] = Variable<String>(nationalNumber);
    }
    if (!nullToAbsent || motherName != null) {
      map['mother_name'] = Variable<String>(motherName);
    }
    if (!nullToAbsent || contactNumber != null) {
      map['contact_number'] = Variable<String>(contactNumber);
    }
    if (!nullToAbsent || gender != null) {
      map['gender'] =
          Variable<String>($BeneficiarysTable.$convertergendern.toSql(gender));
    }
    if (!nullToAbsent || birthDate != null) {
      map['birth_date'] = Variable<DateTime>(birthDate);
    }
    if (!nullToAbsent || medicalStatus != null) {
      map['medical_status'] = Variable<String>(medicalStatus);
    }
    if (!nullToAbsent || hasDisability != null) {
      map['has_disability'] = Variable<bool>(hasDisability);
    }
    {
      map['social_status'] = Variable<String>(
          $BeneficiarysTable.$convertersocialStatus.toSql(socialStatus));
    }
    if (!nullToAbsent || familybookNumber != null) {
      map['familybook_number'] = Variable<String>(familybookNumber);
    }
    if (!nullToAbsent || familyMembersNumber != null) {
      map['family_members_number'] = Variable<String>(familyMembersNumber);
    }
    if (!nullToAbsent || familyMedicalStatus != null) {
      map['family_medical_status'] = Variable<String>(familyMedicalStatus);
    }
    if (!nullToAbsent || familyHasDisability != null) {
      map['family_has_disability'] = Variable<bool>(familyHasDisability);
    }
    if (!nullToAbsent || partnerName != null) {
      map['partner_name'] = Variable<String>(partnerName);
    }
    if (!nullToAbsent || partnerNationalNum != null) {
      map['partner_national_num'] = Variable<String>(partnerNationalNum);
    }
    if (!nullToAbsent || partnerBirthDate != null) {
      map['partner_birth_date'] = Variable<DateTime>(partnerBirthDate);
    }
    if (!nullToAbsent || partnerPhoneNum != null) {
      map['partner_phone_num'] = Variable<String>(partnerPhoneNum);
    }
    if (!nullToAbsent || mainResidence != null) {
      map['main_residence'] = Variable<String>(mainResidence);
    }
    if (!nullToAbsent || currentResidence != null) {
      map['current_residence'] = Variable<String>(currentResidence);
    }
    if (!nullToAbsent || residenceType != null) {
      map['residence_type'] = Variable<String>(residenceType);
    }
    if (!nullToAbsent || residenceStatus != null) {
      map['residence_status'] = Variable<String>(residenceStatus);
    }
    if (!nullToAbsent || shelterName != null) {
      map['shelter_name'] = Variable<String>(shelterName);
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
      firstName: Value(firstName),
      fatherName: Value(fatherName),
      lastName: Value(lastName),
      nationalNumber: nationalNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(nationalNumber),
      motherName: motherName == null && nullToAbsent
          ? const Value.absent()
          : Value(motherName),
      contactNumber: contactNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(contactNumber),
      gender:
          gender == null && nullToAbsent ? const Value.absent() : Value(gender),
      birthDate: birthDate == null && nullToAbsent
          ? const Value.absent()
          : Value(birthDate),
      medicalStatus: medicalStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(medicalStatus),
      hasDisability: hasDisability == null && nullToAbsent
          ? const Value.absent()
          : Value(hasDisability),
      socialStatus: Value(socialStatus),
      familybookNumber: familybookNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(familybookNumber),
      familyMembersNumber: familyMembersNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(familyMembersNumber),
      familyMedicalStatus: familyMedicalStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(familyMedicalStatus),
      familyHasDisability: familyHasDisability == null && nullToAbsent
          ? const Value.absent()
          : Value(familyHasDisability),
      partnerName: partnerName == null && nullToAbsent
          ? const Value.absent()
          : Value(partnerName),
      partnerNationalNum: partnerNationalNum == null && nullToAbsent
          ? const Value.absent()
          : Value(partnerNationalNum),
      partnerBirthDate: partnerBirthDate == null && nullToAbsent
          ? const Value.absent()
          : Value(partnerBirthDate),
      partnerPhoneNum: partnerPhoneNum == null && nullToAbsent
          ? const Value.absent()
          : Value(partnerPhoneNum),
      mainResidence: mainResidence == null && nullToAbsent
          ? const Value.absent()
          : Value(mainResidence),
      currentResidence: currentResidence == null && nullToAbsent
          ? const Value.absent()
          : Value(currentResidence),
      residenceType: residenceType == null && nullToAbsent
          ? const Value.absent()
          : Value(residenceType),
      residenceStatus: residenceStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(residenceStatus),
      shelterName: shelterName == null && nullToAbsent
          ? const Value.absent()
          : Value(shelterName),
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
      firstName: serializer.fromJson<String>(json['firstName']),
      fatherName: serializer.fromJson<String>(json['fatherName']),
      lastName: serializer.fromJson<String>(json['lastName']),
      nationalNumber: serializer.fromJson<String?>(json['nationalNumber']),
      motherName: serializer.fromJson<String?>(json['motherName']),
      contactNumber: serializer.fromJson<String?>(json['contactNumber']),
      gender: $BeneficiarysTable.$convertergendern
          .fromJson(serializer.fromJson<String?>(json['gender'])),
      birthDate: serializer.fromJson<DateTime?>(json['birthDate']),
      medicalStatus: serializer.fromJson<String?>(json['medicalStatus']),
      hasDisability: serializer.fromJson<bool?>(json['hasDisability']),
      socialStatus: $BeneficiarysTable.$convertersocialStatus
          .fromJson(serializer.fromJson<String>(json['socialStatus'])),
      familybookNumber: serializer.fromJson<String?>(json['familybookNumber']),
      familyMembersNumber:
          serializer.fromJson<String?>(json['familyMembersNumber']),
      familyMedicalStatus:
          serializer.fromJson<String?>(json['familyMedicalStatus']),
      familyHasDisability:
          serializer.fromJson<bool?>(json['familyHasDisability']),
      partnerName: serializer.fromJson<String?>(json['partnerName']),
      partnerNationalNum:
          serializer.fromJson<String?>(json['partnerNationalNum']),
      partnerBirthDate:
          serializer.fromJson<DateTime?>(json['partnerBirthDate']),
      partnerPhoneNum: serializer.fromJson<String?>(json['partnerPhoneNum']),
      mainResidence: serializer.fromJson<String?>(json['mainResidence']),
      currentResidence: serializer.fromJson<String?>(json['currentResidence']),
      residenceType: serializer.fromJson<String?>(json['residenceType']),
      residenceStatus: serializer.fromJson<String?>(json['residenceStatus']),
      shelterName: serializer.fromJson<String?>(json['shelterName']),
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
      'firstName': serializer.toJson<String>(firstName),
      'fatherName': serializer.toJson<String>(fatherName),
      'lastName': serializer.toJson<String>(lastName),
      'nationalNumber': serializer.toJson<String?>(nationalNumber),
      'motherName': serializer.toJson<String?>(motherName),
      'contactNumber': serializer.toJson<String?>(contactNumber),
      'gender': serializer
          .toJson<String?>($BeneficiarysTable.$convertergendern.toJson(gender)),
      'birthDate': serializer.toJson<DateTime?>(birthDate),
      'medicalStatus': serializer.toJson<String?>(medicalStatus),
      'hasDisability': serializer.toJson<bool?>(hasDisability),
      'socialStatus': serializer.toJson<String>(
          $BeneficiarysTable.$convertersocialStatus.toJson(socialStatus)),
      'familybookNumber': serializer.toJson<String?>(familybookNumber),
      'familyMembersNumber': serializer.toJson<String?>(familyMembersNumber),
      'familyMedicalStatus': serializer.toJson<String?>(familyMedicalStatus),
      'familyHasDisability': serializer.toJson<bool?>(familyHasDisability),
      'partnerName': serializer.toJson<String?>(partnerName),
      'partnerNationalNum': serializer.toJson<String?>(partnerNationalNum),
      'partnerBirthDate': serializer.toJson<DateTime?>(partnerBirthDate),
      'partnerPhoneNum': serializer.toJson<String?>(partnerPhoneNum),
      'mainResidence': serializer.toJson<String?>(mainResidence),
      'currentResidence': serializer.toJson<String?>(currentResidence),
      'residenceType': serializer.toJson<String?>(residenceType),
      'residenceStatus': serializer.toJson<String?>(residenceStatus),
      'shelterName': serializer.toJson<String?>(shelterName),
      'notes': serializer.toJson<String?>(notes),
      'creationTime': serializer.toJson<DateTime?>(creationTime),
      'creationLocation': serializer.toJson<String?>(creationLocation),
    };
  }

  Beneficiary copyWith(
          {int? id,
          String? firstName,
          String? fatherName,
          String? lastName,
          Value<String?> nationalNumber = const Value.absent(),
          Value<String?> motherName = const Value.absent(),
          Value<String?> contactNumber = const Value.absent(),
          Value<Gender?> gender = const Value.absent(),
          Value<DateTime?> birthDate = const Value.absent(),
          Value<String?> medicalStatus = const Value.absent(),
          Value<bool?> hasDisability = const Value.absent(),
          SocialStatus? socialStatus,
          Value<String?> familybookNumber = const Value.absent(),
          Value<String?> familyMembersNumber = const Value.absent(),
          Value<String?> familyMedicalStatus = const Value.absent(),
          Value<bool?> familyHasDisability = const Value.absent(),
          Value<String?> partnerName = const Value.absent(),
          Value<String?> partnerNationalNum = const Value.absent(),
          Value<DateTime?> partnerBirthDate = const Value.absent(),
          Value<String?> partnerPhoneNum = const Value.absent(),
          Value<String?> mainResidence = const Value.absent(),
          Value<String?> currentResidence = const Value.absent(),
          Value<String?> residenceType = const Value.absent(),
          Value<String?> residenceStatus = const Value.absent(),
          Value<String?> shelterName = const Value.absent(),
          Value<String?> notes = const Value.absent(),
          Value<DateTime?> creationTime = const Value.absent(),
          Value<String?> creationLocation = const Value.absent()}) =>
      Beneficiary(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        fatherName: fatherName ?? this.fatherName,
        lastName: lastName ?? this.lastName,
        nationalNumber:
            nationalNumber.present ? nationalNumber.value : this.nationalNumber,
        motherName: motherName.present ? motherName.value : this.motherName,
        contactNumber:
            contactNumber.present ? contactNumber.value : this.contactNumber,
        gender: gender.present ? gender.value : this.gender,
        birthDate: birthDate.present ? birthDate.value : this.birthDate,
        medicalStatus:
            medicalStatus.present ? medicalStatus.value : this.medicalStatus,
        hasDisability:
            hasDisability.present ? hasDisability.value : this.hasDisability,
        socialStatus: socialStatus ?? this.socialStatus,
        familybookNumber: familybookNumber.present
            ? familybookNumber.value
            : this.familybookNumber,
        familyMembersNumber: familyMembersNumber.present
            ? familyMembersNumber.value
            : this.familyMembersNumber,
        familyMedicalStatus: familyMedicalStatus.present
            ? familyMedicalStatus.value
            : this.familyMedicalStatus,
        familyHasDisability: familyHasDisability.present
            ? familyHasDisability.value
            : this.familyHasDisability,
        partnerName: partnerName.present ? partnerName.value : this.partnerName,
        partnerNationalNum: partnerNationalNum.present
            ? partnerNationalNum.value
            : this.partnerNationalNum,
        partnerBirthDate: partnerBirthDate.present
            ? partnerBirthDate.value
            : this.partnerBirthDate,
        partnerPhoneNum: partnerPhoneNum.present
            ? partnerPhoneNum.value
            : this.partnerPhoneNum,
        mainResidence:
            mainResidence.present ? mainResidence.value : this.mainResidence,
        currentResidence: currentResidence.present
            ? currentResidence.value
            : this.currentResidence,
        residenceType:
            residenceType.present ? residenceType.value : this.residenceType,
        residenceStatus: residenceStatus.present
            ? residenceStatus.value
            : this.residenceStatus,
        shelterName: shelterName.present ? shelterName.value : this.shelterName,
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
      firstName: data.firstName.present ? data.firstName.value : this.firstName,
      fatherName:
          data.fatherName.present ? data.fatherName.value : this.fatherName,
      lastName: data.lastName.present ? data.lastName.value : this.lastName,
      nationalNumber: data.nationalNumber.present
          ? data.nationalNumber.value
          : this.nationalNumber,
      motherName:
          data.motherName.present ? data.motherName.value : this.motherName,
      contactNumber: data.contactNumber.present
          ? data.contactNumber.value
          : this.contactNumber,
      gender: data.gender.present ? data.gender.value : this.gender,
      birthDate: data.birthDate.present ? data.birthDate.value : this.birthDate,
      medicalStatus: data.medicalStatus.present
          ? data.medicalStatus.value
          : this.medicalStatus,
      hasDisability: data.hasDisability.present
          ? data.hasDisability.value
          : this.hasDisability,
      socialStatus: data.socialStatus.present
          ? data.socialStatus.value
          : this.socialStatus,
      familybookNumber: data.familybookNumber.present
          ? data.familybookNumber.value
          : this.familybookNumber,
      familyMembersNumber: data.familyMembersNumber.present
          ? data.familyMembersNumber.value
          : this.familyMembersNumber,
      familyMedicalStatus: data.familyMedicalStatus.present
          ? data.familyMedicalStatus.value
          : this.familyMedicalStatus,
      familyHasDisability: data.familyHasDisability.present
          ? data.familyHasDisability.value
          : this.familyHasDisability,
      partnerName:
          data.partnerName.present ? data.partnerName.value : this.partnerName,
      partnerNationalNum: data.partnerNationalNum.present
          ? data.partnerNationalNum.value
          : this.partnerNationalNum,
      partnerBirthDate: data.partnerBirthDate.present
          ? data.partnerBirthDate.value
          : this.partnerBirthDate,
      partnerPhoneNum: data.partnerPhoneNum.present
          ? data.partnerPhoneNum.value
          : this.partnerPhoneNum,
      mainResidence: data.mainResidence.present
          ? data.mainResidence.value
          : this.mainResidence,
      currentResidence: data.currentResidence.present
          ? data.currentResidence.value
          : this.currentResidence,
      residenceType: data.residenceType.present
          ? data.residenceType.value
          : this.residenceType,
      residenceStatus: data.residenceStatus.present
          ? data.residenceStatus.value
          : this.residenceStatus,
      shelterName:
          data.shelterName.present ? data.shelterName.value : this.shelterName,
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
          ..write('firstName: $firstName, ')
          ..write('fatherName: $fatherName, ')
          ..write('lastName: $lastName, ')
          ..write('nationalNumber: $nationalNumber, ')
          ..write('motherName: $motherName, ')
          ..write('contactNumber: $contactNumber, ')
          ..write('gender: $gender, ')
          ..write('birthDate: $birthDate, ')
          ..write('medicalStatus: $medicalStatus, ')
          ..write('hasDisability: $hasDisability, ')
          ..write('socialStatus: $socialStatus, ')
          ..write('familybookNumber: $familybookNumber, ')
          ..write('familyMembersNumber: $familyMembersNumber, ')
          ..write('familyMedicalStatus: $familyMedicalStatus, ')
          ..write('familyHasDisability: $familyHasDisability, ')
          ..write('partnerName: $partnerName, ')
          ..write('partnerNationalNum: $partnerNationalNum, ')
          ..write('partnerBirthDate: $partnerBirthDate, ')
          ..write('partnerPhoneNum: $partnerPhoneNum, ')
          ..write('mainResidence: $mainResidence, ')
          ..write('currentResidence: $currentResidence, ')
          ..write('residenceType: $residenceType, ')
          ..write('residenceStatus: $residenceStatus, ')
          ..write('shelterName: $shelterName, ')
          ..write('notes: $notes, ')
          ..write('creationTime: $creationTime, ')
          ..write('creationLocation: $creationLocation')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        firstName,
        fatherName,
        lastName,
        nationalNumber,
        motherName,
        contactNumber,
        gender,
        birthDate,
        medicalStatus,
        hasDisability,
        socialStatus,
        familybookNumber,
        familyMembersNumber,
        familyMedicalStatus,
        familyHasDisability,
        partnerName,
        partnerNationalNum,
        partnerBirthDate,
        partnerPhoneNum,
        mainResidence,
        currentResidence,
        residenceType,
        residenceStatus,
        shelterName,
        notes,
        creationTime,
        creationLocation
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Beneficiary &&
          other.id == this.id &&
          other.firstName == this.firstName &&
          other.fatherName == this.fatherName &&
          other.lastName == this.lastName &&
          other.nationalNumber == this.nationalNumber &&
          other.motherName == this.motherName &&
          other.contactNumber == this.contactNumber &&
          other.gender == this.gender &&
          other.birthDate == this.birthDate &&
          other.medicalStatus == this.medicalStatus &&
          other.hasDisability == this.hasDisability &&
          other.socialStatus == this.socialStatus &&
          other.familybookNumber == this.familybookNumber &&
          other.familyMembersNumber == this.familyMembersNumber &&
          other.familyMedicalStatus == this.familyMedicalStatus &&
          other.familyHasDisability == this.familyHasDisability &&
          other.partnerName == this.partnerName &&
          other.partnerNationalNum == this.partnerNationalNum &&
          other.partnerBirthDate == this.partnerBirthDate &&
          other.partnerPhoneNum == this.partnerPhoneNum &&
          other.mainResidence == this.mainResidence &&
          other.currentResidence == this.currentResidence &&
          other.residenceType == this.residenceType &&
          other.residenceStatus == this.residenceStatus &&
          other.shelterName == this.shelterName &&
          other.notes == this.notes &&
          other.creationTime == this.creationTime &&
          other.creationLocation == this.creationLocation);
}

class BeneficiarysCompanion extends UpdateCompanion<Beneficiary> {
  final Value<int> id;
  final Value<String> firstName;
  final Value<String> fatherName;
  final Value<String> lastName;
  final Value<String?> nationalNumber;
  final Value<String?> motherName;
  final Value<String?> contactNumber;
  final Value<Gender?> gender;
  final Value<DateTime?> birthDate;
  final Value<String?> medicalStatus;
  final Value<bool?> hasDisability;
  final Value<SocialStatus> socialStatus;
  final Value<String?> familybookNumber;
  final Value<String?> familyMembersNumber;
  final Value<String?> familyMedicalStatus;
  final Value<bool?> familyHasDisability;
  final Value<String?> partnerName;
  final Value<String?> partnerNationalNum;
  final Value<DateTime?> partnerBirthDate;
  final Value<String?> partnerPhoneNum;
  final Value<String?> mainResidence;
  final Value<String?> currentResidence;
  final Value<String?> residenceType;
  final Value<String?> residenceStatus;
  final Value<String?> shelterName;
  final Value<String?> notes;
  final Value<DateTime?> creationTime;
  final Value<String?> creationLocation;
  const BeneficiarysCompanion({
    this.id = const Value.absent(),
    this.firstName = const Value.absent(),
    this.fatherName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.nationalNumber = const Value.absent(),
    this.motherName = const Value.absent(),
    this.contactNumber = const Value.absent(),
    this.gender = const Value.absent(),
    this.birthDate = const Value.absent(),
    this.medicalStatus = const Value.absent(),
    this.hasDisability = const Value.absent(),
    this.socialStatus = const Value.absent(),
    this.familybookNumber = const Value.absent(),
    this.familyMembersNumber = const Value.absent(),
    this.familyMedicalStatus = const Value.absent(),
    this.familyHasDisability = const Value.absent(),
    this.partnerName = const Value.absent(),
    this.partnerNationalNum = const Value.absent(),
    this.partnerBirthDate = const Value.absent(),
    this.partnerPhoneNum = const Value.absent(),
    this.mainResidence = const Value.absent(),
    this.currentResidence = const Value.absent(),
    this.residenceType = const Value.absent(),
    this.residenceStatus = const Value.absent(),
    this.shelterName = const Value.absent(),
    this.notes = const Value.absent(),
    this.creationTime = const Value.absent(),
    this.creationLocation = const Value.absent(),
  });
  BeneficiarysCompanion.insert({
    this.id = const Value.absent(),
    required String firstName,
    required String fatherName,
    required String lastName,
    this.nationalNumber = const Value.absent(),
    this.motherName = const Value.absent(),
    this.contactNumber = const Value.absent(),
    this.gender = const Value.absent(),
    this.birthDate = const Value.absent(),
    this.medicalStatus = const Value.absent(),
    this.hasDisability = const Value.absent(),
    required SocialStatus socialStatus,
    this.familybookNumber = const Value.absent(),
    this.familyMembersNumber = const Value.absent(),
    this.familyMedicalStatus = const Value.absent(),
    this.familyHasDisability = const Value.absent(),
    this.partnerName = const Value.absent(),
    this.partnerNationalNum = const Value.absent(),
    this.partnerBirthDate = const Value.absent(),
    this.partnerPhoneNum = const Value.absent(),
    this.mainResidence = const Value.absent(),
    this.currentResidence = const Value.absent(),
    this.residenceType = const Value.absent(),
    this.residenceStatus = const Value.absent(),
    this.shelterName = const Value.absent(),
    this.notes = const Value.absent(),
    this.creationTime = const Value.absent(),
    this.creationLocation = const Value.absent(),
  })  : firstName = Value(firstName),
        fatherName = Value(fatherName),
        lastName = Value(lastName),
        socialStatus = Value(socialStatus);
  static Insertable<Beneficiary> custom({
    Expression<int>? id,
    Expression<String>? firstName,
    Expression<String>? fatherName,
    Expression<String>? lastName,
    Expression<String>? nationalNumber,
    Expression<String>? motherName,
    Expression<String>? contactNumber,
    Expression<String>? gender,
    Expression<DateTime>? birthDate,
    Expression<String>? medicalStatus,
    Expression<bool>? hasDisability,
    Expression<String>? socialStatus,
    Expression<String>? familybookNumber,
    Expression<String>? familyMembersNumber,
    Expression<String>? familyMedicalStatus,
    Expression<bool>? familyHasDisability,
    Expression<String>? partnerName,
    Expression<String>? partnerNationalNum,
    Expression<DateTime>? partnerBirthDate,
    Expression<String>? partnerPhoneNum,
    Expression<String>? mainResidence,
    Expression<String>? currentResidence,
    Expression<String>? residenceType,
    Expression<String>? residenceStatus,
    Expression<String>? shelterName,
    Expression<String>? notes,
    Expression<DateTime>? creationTime,
    Expression<String>? creationLocation,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (firstName != null) 'first_name': firstName,
      if (fatherName != null) 'father_name': fatherName,
      if (lastName != null) 'last_name': lastName,
      if (nationalNumber != null) 'national_number': nationalNumber,
      if (motherName != null) 'mother_name': motherName,
      if (contactNumber != null) 'contact_number': contactNumber,
      if (gender != null) 'gender': gender,
      if (birthDate != null) 'birth_date': birthDate,
      if (medicalStatus != null) 'medical_status': medicalStatus,
      if (hasDisability != null) 'has_disability': hasDisability,
      if (socialStatus != null) 'social_status': socialStatus,
      if (familybookNumber != null) 'familybook_number': familybookNumber,
      if (familyMembersNumber != null)
        'family_members_number': familyMembersNumber,
      if (familyMedicalStatus != null)
        'family_medical_status': familyMedicalStatus,
      if (familyHasDisability != null)
        'family_has_disability': familyHasDisability,
      if (partnerName != null) 'partner_name': partnerName,
      if (partnerNationalNum != null)
        'partner_national_num': partnerNationalNum,
      if (partnerBirthDate != null) 'partner_birth_date': partnerBirthDate,
      if (partnerPhoneNum != null) 'partner_phone_num': partnerPhoneNum,
      if (mainResidence != null) 'main_residence': mainResidence,
      if (currentResidence != null) 'current_residence': currentResidence,
      if (residenceType != null) 'residence_type': residenceType,
      if (residenceStatus != null) 'residence_status': residenceStatus,
      if (shelterName != null) 'shelter_name': shelterName,
      if (notes != null) 'notes': notes,
      if (creationTime != null) 'creation_time': creationTime,
      if (creationLocation != null) 'creation_location': creationLocation,
    });
  }

  BeneficiarysCompanion copyWith(
      {Value<int>? id,
      Value<String>? firstName,
      Value<String>? fatherName,
      Value<String>? lastName,
      Value<String?>? nationalNumber,
      Value<String?>? motherName,
      Value<String?>? contactNumber,
      Value<Gender?>? gender,
      Value<DateTime?>? birthDate,
      Value<String?>? medicalStatus,
      Value<bool?>? hasDisability,
      Value<SocialStatus>? socialStatus,
      Value<String?>? familybookNumber,
      Value<String?>? familyMembersNumber,
      Value<String?>? familyMedicalStatus,
      Value<bool?>? familyHasDisability,
      Value<String?>? partnerName,
      Value<String?>? partnerNationalNum,
      Value<DateTime?>? partnerBirthDate,
      Value<String?>? partnerPhoneNum,
      Value<String?>? mainResidence,
      Value<String?>? currentResidence,
      Value<String?>? residenceType,
      Value<String?>? residenceStatus,
      Value<String?>? shelterName,
      Value<String?>? notes,
      Value<DateTime?>? creationTime,
      Value<String?>? creationLocation}) {
    return BeneficiarysCompanion(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      fatherName: fatherName ?? this.fatherName,
      lastName: lastName ?? this.lastName,
      nationalNumber: nationalNumber ?? this.nationalNumber,
      motherName: motherName ?? this.motherName,
      contactNumber: contactNumber ?? this.contactNumber,
      gender: gender ?? this.gender,
      birthDate: birthDate ?? this.birthDate,
      medicalStatus: medicalStatus ?? this.medicalStatus,
      hasDisability: hasDisability ?? this.hasDisability,
      socialStatus: socialStatus ?? this.socialStatus,
      familybookNumber: familybookNumber ?? this.familybookNumber,
      familyMembersNumber: familyMembersNumber ?? this.familyMembersNumber,
      familyMedicalStatus: familyMedicalStatus ?? this.familyMedicalStatus,
      familyHasDisability: familyHasDisability ?? this.familyHasDisability,
      partnerName: partnerName ?? this.partnerName,
      partnerNationalNum: partnerNationalNum ?? this.partnerNationalNum,
      partnerBirthDate: partnerBirthDate ?? this.partnerBirthDate,
      partnerPhoneNum: partnerPhoneNum ?? this.partnerPhoneNum,
      mainResidence: mainResidence ?? this.mainResidence,
      currentResidence: currentResidence ?? this.currentResidence,
      residenceType: residenceType ?? this.residenceType,
      residenceStatus: residenceStatus ?? this.residenceStatus,
      shelterName: shelterName ?? this.shelterName,
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
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (fatherName.present) {
      map['father_name'] = Variable<String>(fatherName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (nationalNumber.present) {
      map['national_number'] = Variable<String>(nationalNumber.value);
    }
    if (motherName.present) {
      map['mother_name'] = Variable<String>(motherName.value);
    }
    if (contactNumber.present) {
      map['contact_number'] = Variable<String>(contactNumber.value);
    }
    if (gender.present) {
      map['gender'] = Variable<String>(
          $BeneficiarysTable.$convertergendern.toSql(gender.value));
    }
    if (birthDate.present) {
      map['birth_date'] = Variable<DateTime>(birthDate.value);
    }
    if (medicalStatus.present) {
      map['medical_status'] = Variable<String>(medicalStatus.value);
    }
    if (hasDisability.present) {
      map['has_disability'] = Variable<bool>(hasDisability.value);
    }
    if (socialStatus.present) {
      map['social_status'] = Variable<String>(
          $BeneficiarysTable.$convertersocialStatus.toSql(socialStatus.value));
    }
    if (familybookNumber.present) {
      map['familybook_number'] = Variable<String>(familybookNumber.value);
    }
    if (familyMembersNumber.present) {
      map['family_members_number'] =
          Variable<String>(familyMembersNumber.value);
    }
    if (familyMedicalStatus.present) {
      map['family_medical_status'] =
          Variable<String>(familyMedicalStatus.value);
    }
    if (familyHasDisability.present) {
      map['family_has_disability'] = Variable<bool>(familyHasDisability.value);
    }
    if (partnerName.present) {
      map['partner_name'] = Variable<String>(partnerName.value);
    }
    if (partnerNationalNum.present) {
      map['partner_national_num'] = Variable<String>(partnerNationalNum.value);
    }
    if (partnerBirthDate.present) {
      map['partner_birth_date'] = Variable<DateTime>(partnerBirthDate.value);
    }
    if (partnerPhoneNum.present) {
      map['partner_phone_num'] = Variable<String>(partnerPhoneNum.value);
    }
    if (mainResidence.present) {
      map['main_residence'] = Variable<String>(mainResidence.value);
    }
    if (currentResidence.present) {
      map['current_residence'] = Variable<String>(currentResidence.value);
    }
    if (residenceType.present) {
      map['residence_type'] = Variable<String>(residenceType.value);
    }
    if (residenceStatus.present) {
      map['residence_status'] = Variable<String>(residenceStatus.value);
    }
    if (shelterName.present) {
      map['shelter_name'] = Variable<String>(shelterName.value);
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
          ..write('firstName: $firstName, ')
          ..write('fatherName: $fatherName, ')
          ..write('lastName: $lastName, ')
          ..write('nationalNumber: $nationalNumber, ')
          ..write('motherName: $motherName, ')
          ..write('contactNumber: $contactNumber, ')
          ..write('gender: $gender, ')
          ..write('birthDate: $birthDate, ')
          ..write('medicalStatus: $medicalStatus, ')
          ..write('hasDisability: $hasDisability, ')
          ..write('socialStatus: $socialStatus, ')
          ..write('familybookNumber: $familybookNumber, ')
          ..write('familyMembersNumber: $familyMembersNumber, ')
          ..write('familyMedicalStatus: $familyMedicalStatus, ')
          ..write('familyHasDisability: $familyHasDisability, ')
          ..write('partnerName: $partnerName, ')
          ..write('partnerNationalNum: $partnerNationalNum, ')
          ..write('partnerBirthDate: $partnerBirthDate, ')
          ..write('partnerPhoneNum: $partnerPhoneNum, ')
          ..write('mainResidence: $mainResidence, ')
          ..write('currentResidence: $currentResidence, ')
          ..write('residenceType: $residenceType, ')
          ..write('residenceStatus: $residenceStatus, ')
          ..write('shelterName: $shelterName, ')
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
}

typedef $$BeneficiarysTableCreateCompanionBuilder = BeneficiarysCompanion
    Function({
  Value<int> id,
  required String firstName,
  required String fatherName,
  required String lastName,
  Value<String?> nationalNumber,
  Value<String?> motherName,
  Value<String?> contactNumber,
  Value<Gender?> gender,
  Value<DateTime?> birthDate,
  Value<String?> medicalStatus,
  Value<bool?> hasDisability,
  required SocialStatus socialStatus,
  Value<String?> familybookNumber,
  Value<String?> familyMembersNumber,
  Value<String?> familyMedicalStatus,
  Value<bool?> familyHasDisability,
  Value<String?> partnerName,
  Value<String?> partnerNationalNum,
  Value<DateTime?> partnerBirthDate,
  Value<String?> partnerPhoneNum,
  Value<String?> mainResidence,
  Value<String?> currentResidence,
  Value<String?> residenceType,
  Value<String?> residenceStatus,
  Value<String?> shelterName,
  Value<String?> notes,
  Value<DateTime?> creationTime,
  Value<String?> creationLocation,
});
typedef $$BeneficiarysTableUpdateCompanionBuilder = BeneficiarysCompanion
    Function({
  Value<int> id,
  Value<String> firstName,
  Value<String> fatherName,
  Value<String> lastName,
  Value<String?> nationalNumber,
  Value<String?> motherName,
  Value<String?> contactNumber,
  Value<Gender?> gender,
  Value<DateTime?> birthDate,
  Value<String?> medicalStatus,
  Value<bool?> hasDisability,
  Value<SocialStatus> socialStatus,
  Value<String?> familybookNumber,
  Value<String?> familyMembersNumber,
  Value<String?> familyMedicalStatus,
  Value<bool?> familyHasDisability,
  Value<String?> partnerName,
  Value<String?> partnerNationalNum,
  Value<DateTime?> partnerBirthDate,
  Value<String?> partnerPhoneNum,
  Value<String?> mainResidence,
  Value<String?> currentResidence,
  Value<String?> residenceType,
  Value<String?> residenceStatus,
  Value<String?> shelterName,
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

  ColumnFilters<String> get firstName => $composableBuilder(
      column: $table.firstName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get fatherName => $composableBuilder(
      column: $table.fatherName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lastName => $composableBuilder(
      column: $table.lastName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get nationalNumber => $composableBuilder(
      column: $table.nationalNumber,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get motherName => $composableBuilder(
      column: $table.motherName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contactNumber => $composableBuilder(
      column: $table.contactNumber, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<Gender?, Gender, String> get gender =>
      $composableBuilder(
          column: $table.gender,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<DateTime> get birthDate => $composableBuilder(
      column: $table.birthDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get medicalStatus => $composableBuilder(
      column: $table.medicalStatus, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get hasDisability => $composableBuilder(
      column: $table.hasDisability, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<SocialStatus, SocialStatus, String>
      get socialStatus => $composableBuilder(
          column: $table.socialStatus,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get familybookNumber => $composableBuilder(
      column: $table.familybookNumber,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get familyMembersNumber => $composableBuilder(
      column: $table.familyMembersNumber,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get familyMedicalStatus => $composableBuilder(
      column: $table.familyMedicalStatus,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get familyHasDisability => $composableBuilder(
      column: $table.familyHasDisability,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get partnerName => $composableBuilder(
      column: $table.partnerName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get partnerNationalNum => $composableBuilder(
      column: $table.partnerNationalNum,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get partnerBirthDate => $composableBuilder(
      column: $table.partnerBirthDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get partnerPhoneNum => $composableBuilder(
      column: $table.partnerPhoneNum,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get mainResidence => $composableBuilder(
      column: $table.mainResidence, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get currentResidence => $composableBuilder(
      column: $table.currentResidence,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get residenceType => $composableBuilder(
      column: $table.residenceType, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get residenceStatus => $composableBuilder(
      column: $table.residenceStatus,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get shelterName => $composableBuilder(
      column: $table.shelterName, builder: (column) => ColumnFilters(column));

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

  ColumnOrderings<String> get firstName => $composableBuilder(
      column: $table.firstName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get fatherName => $composableBuilder(
      column: $table.fatherName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lastName => $composableBuilder(
      column: $table.lastName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get nationalNumber => $composableBuilder(
      column: $table.nationalNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get motherName => $composableBuilder(
      column: $table.motherName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contactNumber => $composableBuilder(
      column: $table.contactNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get gender => $composableBuilder(
      column: $table.gender, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get birthDate => $composableBuilder(
      column: $table.birthDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get medicalStatus => $composableBuilder(
      column: $table.medicalStatus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get hasDisability => $composableBuilder(
      column: $table.hasDisability,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get socialStatus => $composableBuilder(
      column: $table.socialStatus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get familybookNumber => $composableBuilder(
      column: $table.familybookNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get familyMembersNumber => $composableBuilder(
      column: $table.familyMembersNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get familyMedicalStatus => $composableBuilder(
      column: $table.familyMedicalStatus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get familyHasDisability => $composableBuilder(
      column: $table.familyHasDisability,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get partnerName => $composableBuilder(
      column: $table.partnerName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get partnerNationalNum => $composableBuilder(
      column: $table.partnerNationalNum,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get partnerBirthDate => $composableBuilder(
      column: $table.partnerBirthDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get partnerPhoneNum => $composableBuilder(
      column: $table.partnerPhoneNum,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get mainResidence => $composableBuilder(
      column: $table.mainResidence,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get currentResidence => $composableBuilder(
      column: $table.currentResidence,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get residenceType => $composableBuilder(
      column: $table.residenceType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get residenceStatus => $composableBuilder(
      column: $table.residenceStatus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get shelterName => $composableBuilder(
      column: $table.shelterName, builder: (column) => ColumnOrderings(column));

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

  GeneratedColumn<String> get firstName =>
      $composableBuilder(column: $table.firstName, builder: (column) => column);

  GeneratedColumn<String> get fatherName => $composableBuilder(
      column: $table.fatherName, builder: (column) => column);

  GeneratedColumn<String> get lastName =>
      $composableBuilder(column: $table.lastName, builder: (column) => column);

  GeneratedColumn<String> get nationalNumber => $composableBuilder(
      column: $table.nationalNumber, builder: (column) => column);

  GeneratedColumn<String> get motherName => $composableBuilder(
      column: $table.motherName, builder: (column) => column);

  GeneratedColumn<String> get contactNumber => $composableBuilder(
      column: $table.contactNumber, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Gender?, String> get gender =>
      $composableBuilder(column: $table.gender, builder: (column) => column);

  GeneratedColumn<DateTime> get birthDate =>
      $composableBuilder(column: $table.birthDate, builder: (column) => column);

  GeneratedColumn<String> get medicalStatus => $composableBuilder(
      column: $table.medicalStatus, builder: (column) => column);

  GeneratedColumn<bool> get hasDisability => $composableBuilder(
      column: $table.hasDisability, builder: (column) => column);

  GeneratedColumnWithTypeConverter<SocialStatus, String> get socialStatus =>
      $composableBuilder(
          column: $table.socialStatus, builder: (column) => column);

  GeneratedColumn<String> get familybookNumber => $composableBuilder(
      column: $table.familybookNumber, builder: (column) => column);

  GeneratedColumn<String> get familyMembersNumber => $composableBuilder(
      column: $table.familyMembersNumber, builder: (column) => column);

  GeneratedColumn<String> get familyMedicalStatus => $composableBuilder(
      column: $table.familyMedicalStatus, builder: (column) => column);

  GeneratedColumn<bool> get familyHasDisability => $composableBuilder(
      column: $table.familyHasDisability, builder: (column) => column);

  GeneratedColumn<String> get partnerName => $composableBuilder(
      column: $table.partnerName, builder: (column) => column);

  GeneratedColumn<String> get partnerNationalNum => $composableBuilder(
      column: $table.partnerNationalNum, builder: (column) => column);

  GeneratedColumn<DateTime> get partnerBirthDate => $composableBuilder(
      column: $table.partnerBirthDate, builder: (column) => column);

  GeneratedColumn<String> get partnerPhoneNum => $composableBuilder(
      column: $table.partnerPhoneNum, builder: (column) => column);

  GeneratedColumn<String> get mainResidence => $composableBuilder(
      column: $table.mainResidence, builder: (column) => column);

  GeneratedColumn<String> get currentResidence => $composableBuilder(
      column: $table.currentResidence, builder: (column) => column);

  GeneratedColumn<String> get residenceType => $composableBuilder(
      column: $table.residenceType, builder: (column) => column);

  GeneratedColumn<String> get residenceStatus => $composableBuilder(
      column: $table.residenceStatus, builder: (column) => column);

  GeneratedColumn<String> get shelterName => $composableBuilder(
      column: $table.shelterName, builder: (column) => column);

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
            Value<String> firstName = const Value.absent(),
            Value<String> fatherName = const Value.absent(),
            Value<String> lastName = const Value.absent(),
            Value<String?> nationalNumber = const Value.absent(),
            Value<String?> motherName = const Value.absent(),
            Value<String?> contactNumber = const Value.absent(),
            Value<Gender?> gender = const Value.absent(),
            Value<DateTime?> birthDate = const Value.absent(),
            Value<String?> medicalStatus = const Value.absent(),
            Value<bool?> hasDisability = const Value.absent(),
            Value<SocialStatus> socialStatus = const Value.absent(),
            Value<String?> familybookNumber = const Value.absent(),
            Value<String?> familyMembersNumber = const Value.absent(),
            Value<String?> familyMedicalStatus = const Value.absent(),
            Value<bool?> familyHasDisability = const Value.absent(),
            Value<String?> partnerName = const Value.absent(),
            Value<String?> partnerNationalNum = const Value.absent(),
            Value<DateTime?> partnerBirthDate = const Value.absent(),
            Value<String?> partnerPhoneNum = const Value.absent(),
            Value<String?> mainResidence = const Value.absent(),
            Value<String?> currentResidence = const Value.absent(),
            Value<String?> residenceType = const Value.absent(),
            Value<String?> residenceStatus = const Value.absent(),
            Value<String?> shelterName = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<DateTime?> creationTime = const Value.absent(),
            Value<String?> creationLocation = const Value.absent(),
          }) =>
              BeneficiarysCompanion(
            id: id,
            firstName: firstName,
            fatherName: fatherName,
            lastName: lastName,
            nationalNumber: nationalNumber,
            motherName: motherName,
            contactNumber: contactNumber,
            gender: gender,
            birthDate: birthDate,
            medicalStatus: medicalStatus,
            hasDisability: hasDisability,
            socialStatus: socialStatus,
            familybookNumber: familybookNumber,
            familyMembersNumber: familyMembersNumber,
            familyMedicalStatus: familyMedicalStatus,
            familyHasDisability: familyHasDisability,
            partnerName: partnerName,
            partnerNationalNum: partnerNationalNum,
            partnerBirthDate: partnerBirthDate,
            partnerPhoneNum: partnerPhoneNum,
            mainResidence: mainResidence,
            currentResidence: currentResidence,
            residenceType: residenceType,
            residenceStatus: residenceStatus,
            shelterName: shelterName,
            notes: notes,
            creationTime: creationTime,
            creationLocation: creationLocation,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String firstName,
            required String fatherName,
            required String lastName,
            Value<String?> nationalNumber = const Value.absent(),
            Value<String?> motherName = const Value.absent(),
            Value<String?> contactNumber = const Value.absent(),
            Value<Gender?> gender = const Value.absent(),
            Value<DateTime?> birthDate = const Value.absent(),
            Value<String?> medicalStatus = const Value.absent(),
            Value<bool?> hasDisability = const Value.absent(),
            required SocialStatus socialStatus,
            Value<String?> familybookNumber = const Value.absent(),
            Value<String?> familyMembersNumber = const Value.absent(),
            Value<String?> familyMedicalStatus = const Value.absent(),
            Value<bool?> familyHasDisability = const Value.absent(),
            Value<String?> partnerName = const Value.absent(),
            Value<String?> partnerNationalNum = const Value.absent(),
            Value<DateTime?> partnerBirthDate = const Value.absent(),
            Value<String?> partnerPhoneNum = const Value.absent(),
            Value<String?> mainResidence = const Value.absent(),
            Value<String?> currentResidence = const Value.absent(),
            Value<String?> residenceType = const Value.absent(),
            Value<String?> residenceStatus = const Value.absent(),
            Value<String?> shelterName = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<DateTime?> creationTime = const Value.absent(),
            Value<String?> creationLocation = const Value.absent(),
          }) =>
              BeneficiarysCompanion.insert(
            id: id,
            firstName: firstName,
            fatherName: fatherName,
            lastName: lastName,
            nationalNumber: nationalNumber,
            motherName: motherName,
            contactNumber: contactNumber,
            gender: gender,
            birthDate: birthDate,
            medicalStatus: medicalStatus,
            hasDisability: hasDisability,
            socialStatus: socialStatus,
            familybookNumber: familybookNumber,
            familyMembersNumber: familyMembersNumber,
            familyMedicalStatus: familyMedicalStatus,
            familyHasDisability: familyHasDisability,
            partnerName: partnerName,
            partnerNationalNum: partnerNationalNum,
            partnerBirthDate: partnerBirthDate,
            partnerPhoneNum: partnerPhoneNum,
            mainResidence: mainResidence,
            currentResidence: currentResidence,
            residenceType: residenceType,
            residenceStatus: residenceStatus,
            shelterName: shelterName,
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
