import 'package:flutter/material.dart';
import '../../constants.dart';
import 'components/body.dart';
import 'package:innisfree/size_config.dart';

class OnBoardingScreen extends StatelessWidget {
  static String routeName = "/onboarding";
  @override
  Widget build(BuildContext context) {
    // Perlu dipanggil pada screen awal
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Body(),
    );
  }
}
