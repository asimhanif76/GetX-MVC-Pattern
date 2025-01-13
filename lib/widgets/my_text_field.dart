import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class MyTextField extends StatelessWidget {
  String label;
  bool isapssword;
  TextInputType keyboardType;
  TextEditingController controller;
  MyTextField(
      {super.key,
      required this.label,
      required this.keyboardType,
      required this.controller,
      this.isapssword = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        controller: controller,
        obscureText: isapssword,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          fillColor: Colors.purple.shade100,
          filled: true,
          labelText: label,
        ),
      ),
    );
  }
}
