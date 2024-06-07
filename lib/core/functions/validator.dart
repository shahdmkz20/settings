import 'package:form_field_validator/form_field_validator.dart';

final nameValidator = MultiValidator([
  RequiredValidator(errorText: 'الاسم مطلوب'),
  MinLengthValidator(2, errorText: 'يجب ان يحوي الاسم على الاقل حرفان'),
]);

final emailValidator = MultiValidator([
  RequiredValidator(errorText: 'الايميل مطلوب'),
  PatternValidator(r'(@)', errorText: 'يجب ان يحوي الإيميل "@" '),
  PatternValidator('.com', errorText: 'يجب ان يحوي الايميل ".com"'),
]);

final passwordValidator = MultiValidator([
  RequiredValidator(errorText: 'كلمة السر مطلوبة'),
  MinLengthValidator(8, errorText: 'يجب ان تكون كلمة السر على الأقل 8 خانات'),
  PatternValidator(r'(?=.*?[#?!@$%^&*-])',
      errorText: 'يجب ان تحوي كلمة السر عل  محرف مميز'),
]);
String? confirmPasswordValidator(String? password, String? confirmPassword) {
  if (password != confirmPassword) {
    return 'كلمة السر لا تتطابق';
  }
  return null;
}
