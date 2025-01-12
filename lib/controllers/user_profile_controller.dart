import 'package:get/get.dart';
import 'package:login_profile_with_mvc_getx/models/user_proile_model.dart';

class UserProfileController extends GetxController {
  var userprofile = UserProileModel(
          name: 'Asim',
          gender: 'Male',
          number: 1234,
          imagePath:
              'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
      .obs;

  void updataProfile(
      String _name, String _gender, int _number, String _imagePath) {
    userprofile.value = UserProileModel(
        name: _name, gender: _gender, number: _number, imagePath: _imagePath);
  }
}
