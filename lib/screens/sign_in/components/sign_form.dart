import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:innisfree/screens/home/home_screen.dart';
import 'package:innisfree/screens/sign_up/sign_up_screen.dart';
import 'package:innisfree/size_config.dart';
import 'package:innisfree/constants.dart';
import 'dart:ui';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isRememberMe = false;
  bool _isObscure = true;

  Widget buildEmail() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: getProportionateScreenHeight(10)),
          Container(
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
              color: kTextFieldFill,
              borderRadius:
                  BorderRadius.circular(getProportionateScreenWidth(8)),
              border: Border.all(color: kTextFieldBorder),
              boxShadow: [
                BoxShadow(color: kShadow, blurRadius: 6, offset: Offset(0, 2)),
              ],
            ),
            height: getProportionateScreenHeight(60),
            child: TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(
                    top: getProportionateScreenHeight(10),
                    left: getProportionateScreenWidth(16)),
                hintText: 'Username',
                hintStyle: TextStyle(
                    color: Colors.grey[400],
                    fontWeight: FontWeight.w600,
                    fontSize: getProportionateScreenHeight(16)),
              ),
            ),
          ),
        ]);
  }

  Widget buildPassword() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
        Widget>[
      SizedBox(height: getProportionateScreenHeight(10)),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: kTextFieldFill,
            borderRadius: BorderRadius.circular(getProportionateScreenWidth(8)),
            border: Border.all(color: kTextFieldBorder),
            boxShadow: [
              BoxShadow(color: kShadow, blurRadius: 6, offset: Offset(0, 2))
            ]),
        height: getProportionateScreenHeight(60),
        child: TextField(
          obscureText: _isObscure,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.only(
                top: getProportionateScreenHeight(10),
                left: getProportionateScreenWidth(16)),
            hintText: 'Password',
            hintStyle: TextStyle(
                color: Colors.grey[400],
                fontWeight: FontWeight.w600,
                fontSize: getProportionateScreenHeight(16)),
            suffixIcon: IconButton(
              color: _isObscure ? Colors.grey[400] : kPrimaryColor,
              icon: Icon(_isObscure ? Icons.visibility : Icons.visibility_off),
              onPressed: () {
                setState(() {
                  _isObscure = !_isObscure;
                });
              },
            ),
          ),
        ),
      ),
    ]);
  }

  Widget buildForgetPassBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => print("Forgot Password"),
        child: Text(
          'Forgot Password ?',
          style: TextStyle(
            fontSize: getProportionateScreenHeight(14),
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }

  Widget buildRemembermec() {
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(
              unselectedWidgetColor: Color(0xffBDBDBD),
            ),
            child: Checkbox(
              value: isRememberMe,
              checkColor: Colors.white,
              activeColor: kPrimaryColor,
              onChanged: (value) {
                setState(() {
                  isRememberMe = value;
                });
              },
            ),
          ),
          Text(
            'Remember Me',
            style: TextStyle(
                fontSize: getProportionateScreenHeight(14),
                color: kPrimaryColor),
          )
        ],
      ),
    );
  }

  Widget buildButtonLogin() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, HomeScreen.routeName);
        },
        style: ElevatedButton.styleFrom(
            primary: Color(0xff0D4335),
            onPrimary: Colors.white,
            padding: EdgeInsets.all(getProportionateScreenHeight(15)),
            textStyle: TextStyle(
                fontSize: getProportionateScreenHeight(16),
                fontWeight: FontWeight.bold),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100))),
        child: Text("Login"),
      ),
    );
  }

  Widget buildSignUp() {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, SignUpScreen.routeName),
      child: RichText(
        text: TextSpan(children: [
          TextSpan(
              text: 'Don\'t have an Account ? ',
              style: TextStyle(
                  color: Color(0xffBDBDBD),
                  fontSize: getProportionateScreenHeight(16),
                  fontWeight: FontWeight.w500)),
          TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                  color: Color(0xff0D4335),
                  fontSize: getProportionateScreenHeight(16),
                  fontWeight: FontWeight.bold))
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                      horizontal: getProportionateScreenWidth(25),
                      vertical: getProportionateScreenHeight(100)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image(
                        image: AssetImage("assets/images/ScreenLogo.png"),
                        height: getProportionateScreenHeight(80),
                        width: getProportionateScreenWidth(80),
                      ),
                      SizedBox(height: getProportionateScreenHeight(20)),
                      Text(
                        'Proceed with your',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: getProportionateScreenHeight(18),
                        ),
                      ),
                      Text(
                        'Login',
                        style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: getProportionateScreenHeight(36),
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: getProportionateScreenHeight(30)),
                      buildEmail(),
                      SizedBox(height: getProportionateScreenHeight(10)),
                      buildPassword(),
                      SizedBox(height: getProportionateScreenHeight(10)),
                      Row(
                        children: <Widget>[
                          buildRemembermec(),
                          Spacer(),
                          buildForgetPassBtn(),
                        ],
                      ),
                      SizedBox(height: getProportionateScreenHeight(15)),
                      buildButtonLogin(),
                      buildSignUp(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
