import 'package:flutter/material.dart';
import 'package:task/core/app/app.dart';
import 'package:task/core/router/router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
      initialRoute: MyRouter.main,
      onGenerateRoute: MyRouter.generateRoute,
    );
  }
}
