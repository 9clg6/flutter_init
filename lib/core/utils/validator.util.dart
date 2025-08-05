import 'package:easy_localization/easy_localization.dart';
import 'package:starter_kit/core/localization/generated/locale_keys.g.dart';

/// Validator util
final class ValidatorUtil {
  /// ValidatorUtil constructor
  ValidatorUtil(this.p1, this.type, {this.p2, this.isSignInField = false});

  /// p1
  final String? p1;

  /// p2
  final String? p2;

  /// is sign in field
  final bool isSignInField;

  /// type
  final FormType type;

  /// Validator
  String? validator() {
    if (p1 == null || p1!.isEmpty) {
      return LocaleKeys.fieldRequired.tr();
    }
    if (isSignInField) return null;

    switch (type) {
      case FormType.password:
        if (!passwordRegex.hasMatch(p1!)) {
          return LocaleKeys.passwordNotOK.tr();
        }
      case FormType.confirmPassword:
        if (p1 != p2) {
          return LocaleKeys.passwordNotMatch.tr();
        }

      case FormType.email:
        if (!emailRegex.hasMatch(p1!)) {
          return LocaleKeys.emailNotValid.tr();
        }
    }
    return null;
  }
}

/// Form type
enum FormType {
  /// password
  password,

  /// confirm password
  confirmPassword,

  /// email
  email,
}

///
RegExp emailRegex = RegExp(
  r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9\-]+\.[a-zA-Z]+",
);

/// Regexp to check if the password is correct
RegExp passwordRegex = RegExp(
  r'''^(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])(?=.*[@#$%^&!()_\-=\[\]{};:'",.<>\/?|\/`*~+§±£•]).{12,}''',
  multiLine: true,
);
