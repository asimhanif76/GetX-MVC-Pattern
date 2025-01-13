import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_profile_with_mvc_getx/controllers/user_profile_controller.dart';

class ViewProfile extends StatelessWidget {
  ViewProfile({super.key});
  UserProfileController controller = Get.put(UserProfileController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Obx(
              () => CircleAvatar(
                backgroundColor: Colors.amber.shade100,
                radius: 70,
                backgroundImage: controller.userprofile.value.imagePath
                        .startsWith('http')
                    ? NetworkImage(controller.userprofile.value.imagePath)
                    : FileImage(File(controller.userprofile.value.imagePath)),
              ),
            ),
            Text(
              "Name : ${controller.userprofile.value.name}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Text(
              "Gender : ${controller.userprofile.value.gender}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
            Text(
              "Number : ${controller.userprofile.value.number}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }
}
