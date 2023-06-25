import 'package:flutter/material.dart';
import 'package:flutter_application_2/Routes_utils/routes_name.dart';
import 'package:flutter_application_2/screen/destination.dart';
import 'package:flutter_application_2/screen/homepage.dart';

class Routes {
  static Route<dynamic> generatedRoute(RouteSettings setting) {
    switch (setting.name) {
      case RouteName.homePage:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case RouteName.destinationScreen:
        return MaterialPageRoute(
            builder: (context) => const DestinationScreen());
      default:
        return MaterialPageRoute(
            builder: (context) =>
                const Scaffold(body: Text('No defined Routes')));
    }
  }
}
