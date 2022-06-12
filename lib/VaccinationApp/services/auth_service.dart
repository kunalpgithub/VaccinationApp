import 'dart:async';

import 'package:myapp/VaccinationApp/services/dio_client.dart';
import '../model/user_registration.dart';

class AuthService {
  Future<UserRegistration> postUser(UserRegistration model) async {
    var _dio = DioClient().createDio();

    final response = await _dio.post('user');

    if (response.statusCode == 200) {
      return UserRegistration.fromJson(response.data);
    } else {
      throw Exception('Failed to register user');
    }
  }
}
