import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class Validator {
  static bool checkEmpty(String text) {
    return text.length != 0;
  }

  static bool checkEmail(String text) {
    return EmailValidator.validate(text);
  }

  static bool checkPassword(String text) {
    return RegExp(r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$')
        .hasMatch(text);
  }

  static bool comparePasswords(String password, String confirmation) {
    return password == confirmation;
  }
}

ValueNotifier<bool> useIsPasswordValid(TextEditingController controller) {
  final passwordValid = useState(false);
  useEffect(() {
    controller.addListener(() {
      passwordValid.value = Validator.checkPassword(controller.text);
    });
    return null;
  }, []);
  return passwordValid;
}

ValueNotifier<bool> useIsEmailValid(TextEditingController controller) {
  final emailValid = useState(false);
  useEffect(() {
    controller.addListener(() {
      emailValid.value = Validator.checkEmail(controller.text);
    });
    return null;
  }, []);
  return emailValid;
}
