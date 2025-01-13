import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_profile_with_mvc_getx/controllers/user_profile_controller.dart';
import 'package:login_profile_with_mvc_getx/views/view_profile.dart';
import 'package:login_profile_with_mvc_getx/widgets/my_text_field.dart';

class ProfileEditPage extends StatelessWidget {
  ProfileEditPage({super.key});
  UserProfileController controller = Get.put(UserProfileController());
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
          Obx(
            () => CircleAvatar(
              backgroundColor: Colors.amber.shade100,
              radius: 70,
              backgroundImage:
                  controller.userprofile.value.imagePath.startsWith('http')
                      ? NetworkImage(controller.userprofile.value.imagePath)
                      : FileImage(File(controller.userprofile.value.imagePath)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  controller.pickImage();
                },
                child: Text('Pick From Gallery')),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ElevatedButton(
                onPressed: () {
                  controller.pickCameraImage  ();
                },
                child: Text('Pick From Camera')),
          ),
          MyTextField(
              label: 'Name',
              keyboardType: TextInputType.text,
              controller: nameController),
          MyTextField(
              label: 'Age',
              keyboardType: TextInputType.number,
              controller: ageController),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black54),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.purple.shade100),
                child: Obx(
                  () => Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                        value: controller.userprofile.value.gender,
                        items: [
                          DropdownMenuItem(
                            child: Text('Male'),
                            value: 'Male',
                          ),
                          DropdownMenuItem(
                            child: Text('Female'),
                            value: 'Female',
                          ),
                          DropdownMenuItem(
                            child: Text('Other'),
                            value: 'Other',
                          ),
                        ],
                        onChanged: (value) {
                          controller.userprofile.update((profile) {
                            profile?.gender = value!;
                          });
                          print('${controller.userprofile.value.gender}');
                        },
                        isExpanded: true,
                      ),
                    ),
                  ),
                )),
          ),
          MyTextField(
              label: 'Mobile Number',
              keyboardType: TextInputType.phone,
              controller: numberController),
          ElevatedButton(
              onPressed: () {
                controller.userprofile.update((user) {
                  user?.name = nameController.text;
                  user?.number = int.parse(numberController.text);
                });
                Get.to(() => ViewProfile());
              },
              child: Text('View Profile'))
        ],
      ),
    ));
  }
}
