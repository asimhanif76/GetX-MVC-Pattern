import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_profile_with_mvc_getx/controllers/user_login_controller.dart';
import 'package:login_profile_with_mvc_getx/views/profile_edit_page.dart';
import 'package:login_profile_with_mvc_getx/widgets/my_text_field.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  UserLoginController controller = Get.put(UserLoginController());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        backgroundColor: Colors.purple.shade300,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              child: Center(
                child: Text(
                  'Login Page',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            MyTextField(
                label: 'Email',
                keyboardType: TextInputType.emailAddress,
                controller: emailController),
            MyTextField(
                label: 'Password',
                keyboardType: TextInputType.text,
                isapssword: true,
                controller: passwordController),
            SizedBox(height: 20),
            Obx(() => Text('Email: ${controller.user.value.email}')),
            Obx(() => Text('Password: ${controller.user.value.password}')),
            SizedBox(height: 20),
            ElevatedButton(
                onPressed: () {
                  controller.updateLogin(
                      emailController.text, passwordController.text);
                },
                child: Text("Login")),
            SizedBox(height: 50),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProfileEditPage(),
                      ));
                },
                child: Text('Profile Page'))
          ],
        ),
      ),
    ));
  }
}
