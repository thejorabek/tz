import 'package:flutter/material.dart';
import 'package:task/core/app/app.dart';
import 'package:task/core/router/router.dart';
import 'package:wakelock/wakelock.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Wakelock.enable();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App(),
      theme: ThemeData.dark(),
      initialRoute: MyRouter.main,
      onGenerateRoute: MyRouter.generateRoute,
    );
  }
}
