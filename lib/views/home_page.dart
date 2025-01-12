import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_profile_with_mvc_getx/controllers/user_login_controller.dart';
import 'package:login_profile_with_mvc_getx/views/profile_edit_page.dart';

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
        backgroundColor: Colors.deepPurple,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: emailController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              controller: passwordController,
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                controller.updateLogin(
                    emailController.text, passwordController.text);
              },
              child: Text("Update")),
          SizedBox(height: 20),
          Obx(() => Text('Email: ${controller.user.value.email}')),
          Obx(() => Text('Password: ${controller.user.value.password}')),
          SizedBox(height: 20),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfileEditPage(),
                    ));
              },
              child: Text('Next Page'))
        ],
      ),
    ));
  }
}
