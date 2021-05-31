import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/onboarding/onboarding_screen.dart';
import 'routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'innisfree',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Inter",
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kTextColor),
          bodyText2: TextStyle(color: kTextColor),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: OnBoardingScreen.routeName,
      routes: routes,
    );
  }
}
