import 'package:flutter/material.dart';
import 'package:task/core/router/router.dart';
import 'package:task/widgets/button.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RouteButton(
              width: width,
              height: height,
              text: 'Task 1',
              onTap: () {
                Navigator.pushNamed(context, MyRouter.weather);
              }),
          SizedBox(height: height * .1),
          RouteButton(
              width: width,
              height: height,
              text: 'Task 2',
              onTap: () {
                Navigator.pushNamed(context, MyRouter.dropdown);
              })
        ],
      )),
    );
  }
}
