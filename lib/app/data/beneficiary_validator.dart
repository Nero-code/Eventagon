Map<String, String> validateUserData(Map<String, dynamic> data) {
  final errors = <String, String>{};

  bool isEmpty(String? value) => value == null || value.trim().isEmpty;
  bool isInvalidPhone(String? value) =>
      value != null && !RegExp(r'^\+?\d{9,15}$').hasMatch(value);
  bool isInvalidNationalNum(String? value) =>
      value != null && !RegExp(r'^\d{11}$').hasMatch(value);
  bool isNegativeInt(int? value) => value != null && value < 0;
  bool isInvalidSalary(String? value) =>
      value != null && !RegExp(r'^\d+(\.\d{1,2})?$').hasMatch(value);

  // Required string fields
  for (final field in ['firstName', 'fatherName', 'lastName']) {
    final value = data[field] as String?;
    if (isEmpty(value)) errors[field] = '$field is required';
  }

  // Optional strings that must not be empty if present
  for (final field in [
    'motherName',
    'partnerName',
    'familybookNumber',
    'originalResidenceRegion',
    'currentResidenceRegion',
    'originalResidenceAddress',
    'currentResidenceAddress',
    'certification',
    'studyAddress',
    'jobDescription'
  ]) {
    final value = data[field] as String?;
    if (value != null && isEmpty(value)) {
      errors[field] = '$field cannot be empty if provided';
    }
  }

  // National number format
  for (final field in ['nationalNumber', 'partnerNationalNum']) {
    final value = data[field] as String?;
    if (isInvalidNationalNum(value)) {
      errors[field] = '$field must be 11 digits';
    }
  }

  // Phone number format
  for (final field in ['contactNumber', 'partnerPhoneNum']) {
    final value = data[field] as String?;
    if (isInvalidPhone(value)) {
      errors[field] = '$field has invalid format';
    }
  }

  // Positive integers
  for (final field in ['familyMembersNumber', 'familyChildrenNumber']) {
    final value = data[field];
    if (value is int && isNegativeInt(value)) {
      errors[field] = '$field must be a positive number';
    }
  }

  // Salary format
  final salary = data['monthlySalary'] as String?;
  if (isInvalidSalary(salary)) {
    errors['monthlySalary'] = 'Invalid salary format';
  }

  return errors;
}

Map<String, String> validateUserData2(Map<String, dynamic> data) {
  final errors = <String, String>{};

  bool isEmpty(String? value) => value == null || value.trim().isEmpty;
  bool isInvalidPhone(String? value) =>
      value != null && !RegExp(r'^\+?\d{9,15}$').hasMatch(value);
  bool isInvalidNationalNum(String? value) =>
      value != null && !RegExp(r'^\d{11}$').hasMatch(value);
  bool isNegativeInt(int? value) => value != null && value < 0;
  bool isInvalidSalary(String? value) =>
      value != null && !RegExp(r'^\d+(\.\d{1,2})?$').hasMatch(value);

  // Required string fields
  for (final field in ['firstName', 'fatherName', 'lastName']) {
    final value = data[field] as String?;
    if (value == null) {
      errors[field] = '$field is null';
    } else if (isEmpty(value)) {
      errors[field] = '$field is required';
    }
  }

  // Optional strings that must not be empty if present
  for (final field in [
    'motherName',
    'partnerName',
    'familybookNumber',
    'originalResidenceRegion',
    'currentResidenceRegion',
    'originalResidenceAddress',
    'currentResidenceAddress',
    'certification',
    'studyAddress',
    'jobDescription'
  ]) {
    final value = data[field] as String?;
    if (value == null) {
      errors[field] = '$field is null';
    } else if (isEmpty(value)) {
      errors[field] = '$field cannot be empty if provided';
    }
  }

  // National number format
  for (final field in ['nationalNumber', 'partnerNationalNum']) {
    final value = data[field] as String?;
    if (value == null) {
      errors[field] = '$field is null';
    } else if (isInvalidNationalNum(value)) {
      errors[field] = '$field must be 11 digits';
    }
  }

  // Phone number format
  for (final field in ['contactNumber', 'partnerPhoneNum']) {
    final value = data[field] as String?;
    if (value == null) {
      errors[field] = '$field is null';
    } else if (isInvalidPhone(value)) {
      errors[field] = '$field has invalid format';
    }
  }

  // Positive integers
  for (final field in ['familyMembersNumber', 'familyChildrenNumber']) {
    final value = data[field];
    if (value == null) {
      errors[field] = '$field is null';
    } else if (value is int && isNegativeInt(value)) {
      errors[field] = '$field must be a positive number';
    }
  }

  // Salary format
  final salary = data['monthlySalary'] as String?;
  if (salary == null) {
    errors['monthlySalary'] = 'monthlySalary is null';
  } else if (isInvalidSalary(salary)) {
    errors['monthlySalary'] = 'Invalid salary format';
  }

  return errors;
}
