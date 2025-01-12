import 'package:flutter/material.dart';
import 'package:login_profile_with_mvc_getx/widgets/my_text_field.dart';

class ProfileEditPage extends StatelessWidget {
   ProfileEditPage({super.key});
  TextEditingController nameController = TextEditingController();
  TextEditingController ageController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController numberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.amber.shade100,
              radius: 50,
              backgroundImage: NetworkImage('https://play-lh.googleusercontent.com/jInS55DYPnTZq8GpylyLmK2L2cDmUoahVacfN_Js_TsOkBEoizKmAl5-p8iFeLiNjtE=w526-h296-rw'),
            ),
            MyTextField(label: 'Name', keyboardType: TextInputType.text, controller: nameController),
            MyTextField(label: 'Age', keyboardType: TextInputType.number, controller: ageController),
            MyTextField(label: 'Mobile Number', keyboardType: TextInputType.phone, controller: numberController),
            ElevatedButton(onPressed: (){}, child: Text('Refresh'))
          ],
        ),
      ));
  }
}