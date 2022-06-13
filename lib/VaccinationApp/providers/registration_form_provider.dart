import 'package:flutter/foundation.dart';
import 'package:myapp/VaccinationApp/extensions/string_extension.dart';
import 'package:myapp/VaccinationApp/model/validation_model.dart';

class RegistrationFormProvider extends ChangeNotifier {
  ValidationModel _emailAddress = ValidationModel(null, null);
  ValidationModel _name = ValidationModel(null, null);
  ValidationModel _mobile = ValidationModel(null, null);
  ValidationModel _town = ValidationModel(null, null);
  // ValidationModel _emailAddress = ValidationModel(null, null)

  ValidationModel get emailAddress => _emailAddress;
  ValidationModel get name => _name;
  ValidationModel get mobile => _mobile;
  ValidationModel get town => _town;

  void validateEmailAddress(String? val) {
    if (val != null && val.isValidEmail) {
      _emailAddress = ValidationModel(val, null);
    } else {
      _emailAddress = ValidationModel(null, 'Please enter a valid email.');
    }
    notifyListeners();
  }

  void validateMobile(String? val) {
    if (val != null && val.isValidPhone) {
      _mobile = ValidationModel(val, null);
    } else {
      _mobile = ValidationModel(null, 'Please enter a valid mobile');
    }
  }

  bool get validate {
    return _emailAddress.value != null;
    // &&
    // _password.value != null &&
    // _phone.value != null &&
    // _name.value != null;
  }
}
