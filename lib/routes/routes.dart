import 'package:flutter/material.dart';
import 'package:login_profile_with_mvc_getx/routes/routes_name.dart';
import 'package:login_profile_with_mvc_getx/views/home_page.dart';
import 'package:login_profile_with_mvc_getx/views/profile_edit_page.dart';
import 'package:login_profile_with_mvc_getx/views/view_profile.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homePage:
        return MaterialPageRoute(
          builder: (context) => HomePage(),
        );

      case RouteName.profileEditPage:
        return MaterialPageRoute(
          builder: (context) => ProfileEditPage(),
        );

      case RouteName.viewProfile:
        return MaterialPageRoute(
          builder: (context) => ViewProfile(),
        );
      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Text('No Route Defined'),
              ),
            );
          },
        );
    }
  }
}
