import 'package:form_field_validator/form_field_validator.dart';

// Email validator
final emailValidator = MultiValidator([
  RequiredValidator(errorText: 'Email is required'),
  EmailValidator(errorText: 'Enter a valid email')
]);

// Password validator
final passwordValidator = MultiValidator([
  RequiredValidator(errorText: 'Password is required'),
  MinLengthValidator(6, errorText: 'Password must be at least 6 characters'),
  PatternValidator(r'^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{6,}$', errorText: 'Password must contain letters and numbers'),
]);
