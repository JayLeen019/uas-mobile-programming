import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class OnBoardingContent extends StatelessWidget {
  const OnBoardingContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.asset(
          image,
        ),
        Spacer(),
        SizedBox(
          width: getProportionateScreenWidth(700),
          height: getProportionateScreenHeight(120),
          child: Center(
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(14),
                color: kSecondaryColor,
                fontWeight: FontWeight.w600,
                letterSpacing: 1.5,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
