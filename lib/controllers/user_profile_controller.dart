import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:login_profile_with_mvc_getx/models/user_proile_model.dart';

class UserProfileController extends GetxController {
  var userprofile = UserProileModel(
          name: 'Asim',
          gender: 'Male',
          number: 1234,
          imagePath:
              'https://images.pexels.com/photos/1704488/pexels-photo-1704488.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500')
      .obs;

  Future pickImage() async {
    ImagePicker imagePicker = ImagePicker();
    final image = await imagePicker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      userprofile.value.imagePath = image.path;
      print("Image selected.${userprofile.value.imagePath}");
    } else {
      print("No image selected.");
    }
  }

  Future pickCameraImage() async {
    ImagePicker imagePicker = ImagePicker();
    final image = await imagePicker.pickImage(source: ImageSource.camera);
    if (image != null) {
      userprofile.value.imagePath = image.path;
      print("Image selected.${userprofile.value.imagePath}");
    } else {
      print("No image selected.");
    }
  }

  // void updataProfile(
  //     String _name, String _gender, int _number, String _imagePath) {
  //   userprofile.value = UserProileModel(
  //       name: _name, gender: _gender, number: _number, imagePath: _imagePath);
  // }
}
