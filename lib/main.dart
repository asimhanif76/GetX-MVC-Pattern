import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_profile_with_mvc_getx/routes/routes.dart';
import 'package:login_profile_with_mvc_getx/routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.homePage,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
