import 'package:flutter/material.dart';
import 'package:task/screens/dropdown_screen.dart';
import 'package:task/screens/main_screen.dart';
import 'package:task/screens/weather_screen.dart';

class MyRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case weather:
        return MaterialPageRoute(builder: (context) => const WeatherScreen());
      case dropdown:
        return MaterialPageRoute(builder: (context) => const DropdownScreen());
      case main:
        return MaterialPageRoute(builder: (context) => const MainScreen());

      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('Route not found'),
            ),
          ),
        );
    }
  }

  static const String weather = '/weather';
  static const String dropdown = '/dropdown';
  static const String main = '/main';
}
