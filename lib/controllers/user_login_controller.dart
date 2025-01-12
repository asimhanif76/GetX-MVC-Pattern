import 'package:get/get.dart';
import 'package:login_profile_with_mvc_getx/models/user_login_model.dart';

class UserLoginController extends GetxController {
  var user = UserLoginModel(email: '', password: '').obs;

  void updateLogin(String _email, String _password) {
    user.value = UserLoginModel(email: _email, password: _password);
    print('Email : ${user.value.email}');
    print('Password : ${user.value.password}');
  }
}
