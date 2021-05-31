import 'package:flutter/widgets.dart';
import 'package:innisfree/screens/home/home_screen.dart';
import 'package:innisfree/screens/otp/otp_screen.dart';
import 'package:innisfree/screens/sign_up/sign_up_screen.dart';
import 'package:innisfree/screens/onboarding/onboarding_screen.dart';
import 'package:innisfree/screens/sign_in/sign_in_screen.dart';

// Penamaan Route
// Semua route tersedia disini

final Map<String, WidgetBuilder> routes = {
  OnBoardingScreen.routeName: (context) => OnBoardingScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
};
