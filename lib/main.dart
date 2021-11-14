import 'package:flutter/material.dart';
import 'package:flutter_first_steps/colors.dart';
import 'package:flutter_first_steps/controllers/navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static final appNavigation = AppNavigation();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter First Step',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        splashColor: Colors.yellow,
        fontFamily: 'Roboto',
        textTheme: const TextTheme(
          button: TextStyle(
            color: textColor,
            fontSize: 16,
          ),
          headline6: TextStyle(
            color: textColor,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
          bodyText1: TextStyle(color: textColor, fontSize: 16),
          bodyText2: TextStyle(color: textColor, fontSize: 18),
        ),
      ),
      routes: appNavigation.routes,
      initialRoute: '/',
    );
  }
}
