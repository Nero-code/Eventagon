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
  static const VerificationMeta _familybookNumberMeta =
      const VerificationMeta('familybookNumber');
  @override
  late final GeneratedColumn<String> familybookNumber = GeneratedColumn<String>(
      'familybook_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _contactNumberMeta =
      const VerificationMeta('contactNumber');
  @override
  late final GeneratedColumn<String> contactNumber = GeneratedColumn<String>(
      'contact_number', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _partnerNameMeta =
      const VerificationMeta('partnerName');
  @override
  late final GeneratedColumn<String> partnerName = GeneratedColumn<String>(
      'partner_name', aliasedName, true,
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
  static const VerificationMeta _medicalStatusMeta =
      const VerificationMeta('medicalStatus');
  @override
  late final GeneratedColumn<String> medicalStatus = GeneratedColumn<String>(
      'medical_status', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      clientDefault: DateTime.now);
  static const VerificationMeta _socialStatusMeta =
      const VerificationMeta('socialStatus');
  @override
  late final GeneratedColumnWithTypeConverter<SocialStatus, String>
      socialStatus = GeneratedColumn<String>(
              'social_status', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<SocialStatus>(
              $BeneficiarysTable.$convertersocialStatus);
  static const VerificationMeta _familyMembersNumberMeta =
      const VerificationMeta('familyMembersNumber');
  @override
  late final GeneratedColumn<String> familyMembersNumber =
      GeneratedColumn<String>('family_members_number', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        firstName,
        fatherName,
        lastName,
        nationalNumber,
        familybookNumber,
        contactNumber,
        partnerName,
        mainResidence,
        currentResidence,
        residenceType,
        residenceStatus,
        shelterName,
        medicalStatus,
        notes,
        createdAt,
        socialStatus,
        familyMembersNumber
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
    if (data.containsKey('familybook_number')) {
      context.handle(
          _familybookNumberMeta,
          familybookNumber.isAcceptableOrUnknown(
              data['familybook_number']!, _familybookNumberMeta));
    }
    if (data.containsKey('contact_number')) {
      context.handle(
          _contactNumberMeta,
          contactNumber.isAcceptableOrUnknown(
              data['contact_number']!, _contactNumberMeta));
    }
    if (data.containsKey('partner_name')) {
      context.handle(
          _partnerNameMeta,
          partnerName.isAcceptableOrUnknown(
              data['partner_name']!, _partnerNameMeta));
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
    if (data.containsKey('medical_status')) {
      context.handle(
          _medicalStatusMeta,
          medicalStatus.isAcceptableOrUnknown(
              data['medical_status']!, _medicalStatusMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    context.handle(_socialStatusMeta, const VerificationResult.success());
    if (data.containsKey('family_members_number')) {
      context.handle(
          _familyMembersNumberMeta,
          familyMembersNumber.isAcceptableOrUnknown(
              data['family_members_number']!, _familyMembersNumberMeta));
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
      familybookNumber: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}familybook_number']),
      contactNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}contact_number']),
      partnerName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}partner_name']),
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
      medicalStatus: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}medical_status']),
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']),
      socialStatus: $BeneficiarysTable.$convertersocialStatus.fromSql(
          attachedDatabase.typeMapping.read(
              DriftSqlType.string, data['${effectivePrefix}social_status'])!),
      familyMembersNumber: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}family_members_number']),
    );
  }

  @override
  $BeneficiarysTable createAlias(String alias) {
    return $BeneficiarysTable(attachedDatabase, alias);
  }

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
  final String? familybookNumber;
  final String? contactNumber;
  final String? partnerName;
  final String? mainResidence;
  final String? currentResidence;
  final String? residenceType;
  final String? residenceStatus;
  final String? shelterName;
  final String? medicalStatus;
  final String? notes;
  final DateTime? createdAt;
  final SocialStatus socialStatus;
  final String? familyMembersNumber;
  const Beneficiary(
      {required this.id,
      required this.firstName,
      required this.fatherName,
      required this.lastName,
      this.nationalNumber,
      this.familybookNumber,
      this.contactNumber,
      this.partnerName,
      this.mainResidence,
      this.currentResidence,
      this.residenceType,
      this.residenceStatus,
      this.shelterName,
      this.medicalStatus,
      this.notes,
      this.createdAt,
      required this.socialStatus,
      this.familyMembersNumber});
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
    if (!nullToAbsent || familybookNumber != null) {
      map['familybook_number'] = Variable<String>(familybookNumber);
    }
    if (!nullToAbsent || contactNumber != null) {
      map['contact_number'] = Variable<String>(contactNumber);
    }
    if (!nullToAbsent || partnerName != null) {
      map['partner_name'] = Variable<String>(partnerName);
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
    if (!nullToAbsent || medicalStatus != null) {
      map['medical_status'] = Variable<String>(medicalStatus);
    }
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    {
      map['social_status'] = Variable<String>(
          $BeneficiarysTable.$convertersocialStatus.toSql(socialStatus));
    }
    if (!nullToAbsent || familyMembersNumber != null) {
      map['family_members_number'] = Variable<String>(familyMembersNumber);
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
      familybookNumber: familybookNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(familybookNumber),
      contactNumber: contactNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(contactNumber),
      partnerName: partnerName == null && nullToAbsent
          ? const Value.absent()
          : Value(partnerName),
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
      medicalStatus: medicalStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(medicalStatus),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      socialStatus: Value(socialStatus),
      familyMembersNumber: familyMembersNumber == null && nullToAbsent
          ? const Value.absent()
          : Value(familyMembersNumber),
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
      familybookNumber: serializer.fromJson<String?>(json['familybookNumber']),
      contactNumber: serializer.fromJson<String?>(json['contactNumber']),
      partnerName: serializer.fromJson<String?>(json['partnerName']),
      mainResidence: serializer.fromJson<String?>(json['mainResidence']),
      currentResidence: serializer.fromJson<String?>(json['currentResidence']),
      residenceType: serializer.fromJson<String?>(json['residenceType']),
      residenceStatus: serializer.fromJson<String?>(json['residenceStatus']),
      shelterName: serializer.fromJson<String?>(json['shelterName']),
      medicalStatus: serializer.fromJson<String?>(json['medicalStatus']),
      notes: serializer.fromJson<String?>(json['notes']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      socialStatus: $BeneficiarysTable.$convertersocialStatus
          .fromJson(serializer.fromJson<String>(json['socialStatus'])),
      familyMembersNumber:
          serializer.fromJson<String?>(json['familyMembersNumber']),
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
      'familybookNumber': serializer.toJson<String?>(familybookNumber),
      'contactNumber': serializer.toJson<String?>(contactNumber),
      'partnerName': serializer.toJson<String?>(partnerName),
      'mainResidence': serializer.toJson<String?>(mainResidence),
      'currentResidence': serializer.toJson<String?>(currentResidence),
      'residenceType': serializer.toJson<String?>(residenceType),
      'residenceStatus': serializer.toJson<String?>(residenceStatus),
      'shelterName': serializer.toJson<String?>(shelterName),
      'medicalStatus': serializer.toJson<String?>(medicalStatus),
      'notes': serializer.toJson<String?>(notes),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'socialStatus': serializer.toJson<String>(
          $BeneficiarysTable.$convertersocialStatus.toJson(socialStatus)),
      'familyMembersNumber': serializer.toJson<String?>(familyMembersNumber),
    };
  }

  Beneficiary copyWith(
          {int? id,
          String? firstName,
          String? fatherName,
          String? lastName,
          Value<String?> nationalNumber = const Value.absent(),
          Value<String?> familybookNumber = const Value.absent(),
          Value<String?> contactNumber = const Value.absent(),
          Value<String?> partnerName = const Value.absent(),
          Value<String?> mainResidence = const Value.absent(),
          Value<String?> currentResidence = const Value.absent(),
          Value<String?> residenceType = const Value.absent(),
          Value<String?> residenceStatus = const Value.absent(),
          Value<String?> shelterName = const Value.absent(),
          Value<String?> medicalStatus = const Value.absent(),
          Value<String?> notes = const Value.absent(),
          Value<DateTime?> createdAt = const Value.absent(),
          SocialStatus? socialStatus,
          Value<String?> familyMembersNumber = const Value.absent()}) =>
      Beneficiary(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        fatherName: fatherName ?? this.fatherName,
        lastName: lastName ?? this.lastName,
        nationalNumber:
            nationalNumber.present ? nationalNumber.value : this.nationalNumber,
        familybookNumber: familybookNumber.present
            ? familybookNumber.value
            : this.familybookNumber,
        contactNumber:
            contactNumber.present ? contactNumber.value : this.contactNumber,
        partnerName: partnerName.present ? partnerName.value : this.partnerName,
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
        medicalStatus:
            medicalStatus.present ? medicalStatus.value : this.medicalStatus,
        notes: notes.present ? notes.value : this.notes,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
        socialStatus: socialStatus ?? this.socialStatus,
        familyMembersNumber: familyMembersNumber.present
            ? familyMembersNumber.value
            : this.familyMembersNumber,
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
      familybookNumber: data.familybookNumber.present
          ? data.familybookNumber.value
          : this.familybookNumber,
      contactNumber: data.contactNumber.present
          ? data.contactNumber.value
          : this.contactNumber,
      partnerName:
          data.partnerName.present ? data.partnerName.value : this.partnerName,
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
      medicalStatus: data.medicalStatus.present
          ? data.medicalStatus.value
          : this.medicalStatus,
      notes: data.notes.present ? data.notes.value : this.notes,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      socialStatus: data.socialStatus.present
          ? data.socialStatus.value
          : this.socialStatus,
      familyMembersNumber: data.familyMembersNumber.present
          ? data.familyMembersNumber.value
          : this.familyMembersNumber,
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
          ..write('familybookNumber: $familybookNumber, ')
          ..write('contactNumber: $contactNumber, ')
          ..write('partnerName: $partnerName, ')
          ..write('mainResidence: $mainResidence, ')
          ..write('currentResidence: $currentResidence, ')
          ..write('residenceType: $residenceType, ')
          ..write('residenceStatus: $residenceStatus, ')
          ..write('shelterName: $shelterName, ')
          ..write('medicalStatus: $medicalStatus, ')
          ..write('notes: $notes, ')
          ..write('createdAt: $createdAt, ')
          ..write('socialStatus: $socialStatus, ')
          ..write('familyMembersNumber: $familyMembersNumber')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      firstName,
      fatherName,
      lastName,
      nationalNumber,
      familybookNumber,
      contactNumber,
      partnerName,
      mainResidence,
      currentResidence,
      residenceType,
      residenceStatus,
      shelterName,
      medicalStatus,
      notes,
      createdAt,
      socialStatus,
      familyMembersNumber);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Beneficiary &&
          other.id == this.id &&
          other.firstName == this.firstName &&
          other.fatherName == this.fatherName &&
          other.lastName == this.lastName &&
          other.nationalNumber == this.nationalNumber &&
          other.familybookNumber == this.familybookNumber &&
          other.contactNumber == this.contactNumber &&
          other.partnerName == this.partnerName &&
          other.mainResidence == this.mainResidence &&
          other.currentResidence == this.currentResidence &&
          other.residenceType == this.residenceType &&
          other.residenceStatus == this.residenceStatus &&
          other.shelterName == this.shelterName &&
          other.medicalStatus == this.medicalStatus &&
          other.notes == this.notes &&
          other.createdAt == this.createdAt &&
          other.socialStatus == this.socialStatus &&
          other.familyMembersNumber == this.familyMembersNumber);
}

class BeneficiarysCompanion extends UpdateCompanion<Beneficiary> {
  final Value<int> id;
  final Value<String> firstName;
  final Value<String> fatherName;
  final Value<String> lastName;
  final Value<String?> nationalNumber;
  final Value<String?> familybookNumber;
  final Value<String?> contactNumber;
  final Value<String?> partnerName;
  final Value<String?> mainResidence;
  final Value<String?> currentResidence;
  final Value<String?> residenceType;
  final Value<String?> residenceStatus;
  final Value<String?> shelterName;
  final Value<String?> medicalStatus;
  final Value<String?> notes;
  final Value<DateTime?> createdAt;
  final Value<SocialStatus> socialStatus;
  final Value<String?> familyMembersNumber;
  const BeneficiarysCompanion({
    this.id = const Value.absent(),
    this.firstName = const Value.absent(),
    this.fatherName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.nationalNumber = const Value.absent(),
    this.familybookNumber = const Value.absent(),
    this.contactNumber = const Value.absent(),
    this.partnerName = const Value.absent(),
    this.mainResidence = const Value.absent(),
    this.currentResidence = const Value.absent(),
    this.residenceType = const Value.absent(),
    this.residenceStatus = const Value.absent(),
    this.shelterName = const Value.absent(),
    this.medicalStatus = const Value.absent(),
    this.notes = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.socialStatus = const Value.absent(),
    this.familyMembersNumber = const Value.absent(),
  });
  BeneficiarysCompanion.insert({
    this.id = const Value.absent(),
    required String firstName,
    required String fatherName,
    required String lastName,
    this.nationalNumber = const Value.absent(),
    this.familybookNumber = const Value.absent(),
    this.contactNumber = const Value.absent(),
    this.partnerName = const Value.absent(),
    this.mainResidence = const Value.absent(),
    this.currentResidence = const Value.absent(),
    this.residenceType = const Value.absent(),
    this.residenceStatus = const Value.absent(),
    this.shelterName = const Value.absent(),
    this.medicalStatus = const Value.absent(),
    this.notes = const Value.absent(),
    this.createdAt = const Value.absent(),
    required SocialStatus socialStatus,
    this.familyMembersNumber = const Value.absent(),
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
    Expression<String>? familybookNumber,
    Expression<String>? contactNumber,
    Expression<String>? partnerName,
    Expression<String>? mainResidence,
    Expression<String>? currentResidence,
    Expression<String>? residenceType,
    Expression<String>? residenceStatus,
    Expression<String>? shelterName,
    Expression<String>? medicalStatus,
    Expression<String>? notes,
    Expression<DateTime>? createdAt,
    Expression<String>? socialStatus,
    Expression<String>? familyMembersNumber,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (firstName != null) 'first_name': firstName,
      if (fatherName != null) 'father_name': fatherName,
      if (lastName != null) 'last_name': lastName,
      if (nationalNumber != null) 'national_number': nationalNumber,
      if (familybookNumber != null) 'familybook_number': familybookNumber,
      if (contactNumber != null) 'contact_number': contactNumber,
      if (partnerName != null) 'partner_name': partnerName,
      if (mainResidence != null) 'main_residence': mainResidence,
      if (currentResidence != null) 'current_residence': currentResidence,
      if (residenceType != null) 'residence_type': residenceType,
      if (residenceStatus != null) 'residence_status': residenceStatus,
      if (shelterName != null) 'shelter_name': shelterName,
      if (medicalStatus != null) 'medical_status': medicalStatus,
      if (notes != null) 'notes': notes,
      if (createdAt != null) 'created_at': createdAt,
      if (socialStatus != null) 'social_status': socialStatus,
      if (familyMembersNumber != null)
        'family_members_number': familyMembersNumber,
    });
  }

  BeneficiarysCompanion copyWith(
      {Value<int>? id,
      Value<String>? firstName,
      Value<String>? fatherName,
      Value<String>? lastName,
      Value<String?>? nationalNumber,
      Value<String?>? familybookNumber,
      Value<String?>? contactNumber,
      Value<String?>? partnerName,
      Value<String?>? mainResidence,
      Value<String?>? currentResidence,
      Value<String?>? residenceType,
      Value<String?>? residenceStatus,
      Value<String?>? shelterName,
      Value<String?>? medicalStatus,
      Value<String?>? notes,
      Value<DateTime?>? createdAt,
      Value<SocialStatus>? socialStatus,
      Value<String?>? familyMembersNumber}) {
    return BeneficiarysCompanion(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      fatherName: fatherName ?? this.fatherName,
      lastName: lastName ?? this.lastName,
      nationalNumber: nationalNumber ?? this.nationalNumber,
      familybookNumber: familybookNumber ?? this.familybookNumber,
      contactNumber: contactNumber ?? this.contactNumber,
      partnerName: partnerName ?? this.partnerName,
      mainResidence: mainResidence ?? this.mainResidence,
      currentResidence: currentResidence ?? this.currentResidence,
      residenceType: residenceType ?? this.residenceType,
      residenceStatus: residenceStatus ?? this.residenceStatus,
      shelterName: shelterName ?? this.shelterName,
      medicalStatus: medicalStatus ?? this.medicalStatus,
      notes: notes ?? this.notes,
      createdAt: createdAt ?? this.createdAt,
      socialStatus: socialStatus ?? this.socialStatus,
      familyMembersNumber: familyMembersNumber ?? this.familyMembersNumber,
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
    if (familybookNumber.present) {
      map['familybook_number'] = Variable<String>(familybookNumber.value);
    }
    if (contactNumber.present) {
      map['contact_number'] = Variable<String>(contactNumber.value);
    }
    if (partnerName.present) {
      map['partner_name'] = Variable<String>(partnerName.value);
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
    if (medicalStatus.present) {
      map['medical_status'] = Variable<String>(medicalStatus.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (socialStatus.present) {
      map['social_status'] = Variable<String>(
          $BeneficiarysTable.$convertersocialStatus.toSql(socialStatus.value));
    }
    if (familyMembersNumber.present) {
      map['family_members_number'] =
          Variable<String>(familyMembersNumber.value);
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
          ..write('familybookNumber: $familybookNumber, ')
          ..write('contactNumber: $contactNumber, ')
          ..write('partnerName: $partnerName, ')
          ..write('mainResidence: $mainResidence, ')
          ..write('currentResidence: $currentResidence, ')
          ..write('residenceType: $residenceType, ')
          ..write('residenceStatus: $residenceStatus, ')
          ..write('shelterName: $shelterName, ')
          ..write('medicalStatus: $medicalStatus, ')
          ..write('notes: $notes, ')
          ..write('createdAt: $createdAt, ')
          ..write('socialStatus: $socialStatus, ')
          ..write('familyMembersNumber: $familyMembersNumber')
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
  Value<String?> familybookNumber,
  Value<String?> contactNumber,
  Value<String?> partnerName,
  Value<String?> mainResidence,
  Value<String?> currentResidence,
  Value<String?> residenceType,
  Value<String?> residenceStatus,
  Value<String?> shelterName,
  Value<String?> medicalStatus,
  Value<String?> notes,
  Value<DateTime?> createdAt,
  required SocialStatus socialStatus,
  Value<String?> familyMembersNumber,
});
typedef $$BeneficiarysTableUpdateCompanionBuilder = BeneficiarysCompanion
    Function({
  Value<int> id,
  Value<String> firstName,
  Value<String> fatherName,
  Value<String> lastName,
  Value<String?> nationalNumber,
  Value<String?> familybookNumber,
  Value<String?> contactNumber,
  Value<String?> partnerName,
  Value<String?> mainResidence,
  Value<String?> currentResidence,
  Value<String?> residenceType,
  Value<String?> residenceStatus,
  Value<String?> shelterName,
  Value<String?> medicalStatus,
  Value<String?> notes,
  Value<DateTime?> createdAt,
  Value<SocialStatus> socialStatus,
  Value<String?> familyMembersNumber,
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

  ColumnFilters<String> get familybookNumber => $composableBuilder(
      column: $table.familybookNumber,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get contactNumber => $composableBuilder(
      column: $table.contactNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get partnerName => $composableBuilder(
      column: $table.partnerName, builder: (column) => ColumnFilters(column));

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

  ColumnFilters<String> get medicalStatus => $composableBuilder(
      column: $table.medicalStatus, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<SocialStatus, SocialStatus, String>
      get socialStatus => $composableBuilder(
          column: $table.socialStatus,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get familyMembersNumber => $composableBuilder(
      column: $table.familyMembersNumber,
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

  ColumnOrderings<String> get familybookNumber => $composableBuilder(
      column: $table.familybookNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get contactNumber => $composableBuilder(
      column: $table.contactNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get partnerName => $composableBuilder(
      column: $table.partnerName, builder: (column) => ColumnOrderings(column));

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

  ColumnOrderings<String> get medicalStatus => $composableBuilder(
      column: $table.medicalStatus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get socialStatus => $composableBuilder(
      column: $table.socialStatus,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get familyMembersNumber => $composableBuilder(
      column: $table.familyMembersNumber,
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

  GeneratedColumn<String> get familybookNumber => $composableBuilder(
      column: $table.familybookNumber, builder: (column) => column);

  GeneratedColumn<String> get contactNumber => $composableBuilder(
      column: $table.contactNumber, builder: (column) => column);

  GeneratedColumn<String> get partnerName => $composableBuilder(
      column: $table.partnerName, builder: (column) => column);

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

  GeneratedColumn<String> get medicalStatus => $composableBuilder(
      column: $table.medicalStatus, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumnWithTypeConverter<SocialStatus, String> get socialStatus =>
      $composableBuilder(
          column: $table.socialStatus, builder: (column) => column);

  GeneratedColumn<String> get familyMembersNumber => $composableBuilder(
      column: $table.familyMembersNumber, builder: (column) => column);
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
            Value<String?> familybookNumber = const Value.absent(),
            Value<String?> contactNumber = const Value.absent(),
            Value<String?> partnerName = const Value.absent(),
            Value<String?> mainResidence = const Value.absent(),
            Value<String?> currentResidence = const Value.absent(),
            Value<String?> residenceType = const Value.absent(),
            Value<String?> residenceStatus = const Value.absent(),
            Value<String?> shelterName = const Value.absent(),
            Value<String?> medicalStatus = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<DateTime?> createdAt = const Value.absent(),
            Value<SocialStatus> socialStatus = const Value.absent(),
            Value<String?> familyMembersNumber = const Value.absent(),
          }) =>
              BeneficiarysCompanion(
            id: id,
            firstName: firstName,
            fatherName: fatherName,
            lastName: lastName,
            nationalNumber: nationalNumber,
            familybookNumber: familybookNumber,
            contactNumber: contactNumber,
            partnerName: partnerName,
            mainResidence: mainResidence,
            currentResidence: currentResidence,
            residenceType: residenceType,
            residenceStatus: residenceStatus,
            shelterName: shelterName,
            medicalStatus: medicalStatus,
            notes: notes,
            createdAt: createdAt,
            socialStatus: socialStatus,
            familyMembersNumber: familyMembersNumber,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String firstName,
            required String fatherName,
            required String lastName,
            Value<String?> nationalNumber = const Value.absent(),
            Value<String?> familybookNumber = const Value.absent(),
            Value<String?> contactNumber = const Value.absent(),
            Value<String?> partnerName = const Value.absent(),
            Value<String?> mainResidence = const Value.absent(),
            Value<String?> currentResidence = const Value.absent(),
            Value<String?> residenceType = const Value.absent(),
            Value<String?> residenceStatus = const Value.absent(),
            Value<String?> shelterName = const Value.absent(),
            Value<String?> medicalStatus = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<DateTime?> createdAt = const Value.absent(),
            required SocialStatus socialStatus,
            Value<String?> familyMembersNumber = const Value.absent(),
          }) =>
              BeneficiarysCompanion.insert(
            id: id,
            firstName: firstName,
            fatherName: fatherName,
            lastName: lastName,
            nationalNumber: nationalNumber,
            familybookNumber: familybookNumber,
            contactNumber: contactNumber,
            partnerName: partnerName,
            mainResidence: mainResidence,
            currentResidence: currentResidence,
            residenceType: residenceType,
            residenceStatus: residenceStatus,
            shelterName: shelterName,
            medicalStatus: medicalStatus,
            notes: notes,
            createdAt: createdAt,
            socialStatus: socialStatus,
            familyMembersNumber: familyMembersNumber,
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
