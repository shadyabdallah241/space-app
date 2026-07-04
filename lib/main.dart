import 'package:flutter/material.dart';
import 'package:space/screens/home_screen.dart';
import 'package:space/screens/login_screen.dart';
import 'package:space/screens/planet_details_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //----------ScreensNavigation---------//
      home: LoginScreen(),
      initialRoute:  LoginScreen.routName,
      routes: {
        HomeScreen.routName: (context) => HomeScreen(),
        LoginScreen.routName: (context) => LoginScreen(),
        PlanetDetailsScreen.routName: (context) => PlanetDetailsScreen(),
      },
    );
  }
}
