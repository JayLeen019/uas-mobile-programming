import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:innisfree/screens/otp/otp_screen.dart';
import 'package:innisfree/size_config.dart';
import 'package:innisfree/constants.dart';
import 'package:innisfree/screens/sign_in/sign_in_screen.dart';

class ProfileEdit extends StatefulWidget {
  static String routeName = "/ProfileEdit";
  @override
  _ProfileEditState createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> {
  int _groupValue = -1;
  bool _isObscure = true;
  bool _agree1 = false;
  bool _agree2 = false;
  var confirmPass;

  Widget buildAgree1() {
    return Container(
      height: getProportionateScreenHeight(20),
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(
              unselectedWidgetColor: Color(0xffBDBDBD),
            ),
            child: Checkbox(
              value: _agree1,
              checkColor: Colors.white,
              activeColor: const Color(0xff0d4335),
              onChanged: (value) {
                setState(() {
                  _agree1 = value;
                });
              },
            ),
          ),
          Expanded(
              child: (Row(
            children: [
              Text(
                'I would like to receive your newsletter',
                style: TextStyle(
                    fontSize: getProportionateScreenHeight(14),
                    color: kPrimaryColor),
              ),
            ],
          ))),
        ],
      ),
    );
  }

  Widget buildAgree2() {
    return Container(
      height: getProportionateScreenHeight(20),
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(
              unselectedWidgetColor: Color(0xffBDBDBD),
            ),
            child: Checkbox(
              value: _agree2,
              checkColor: Colors.white,
              activeColor: kPrimaryColor,
              onChanged: (value) {
                setState(() {
                  _agree2 = value;
                });
              },
            ),
          ),
          Expanded(
              child: (Row(
            children: [
              Text(
                'I agree to the',
                style: TextStyle(
                    fontSize: getProportionateScreenHeight(14),
                    color: kPrimaryColor),
              ),
              Text(
                ' Terms & Conditions',
                style: TextStyle(
                    fontSize: getProportionateScreenHeight(14),
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ))),
        ],
      ),
    );
  }

  Widget buildButtonReg() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, OtpScreen.routeName);
        },
        style: ElevatedButton.styleFrom(
            primary: Color(0xff0D4335),
            onPrimary: Colors.white,
            elevation: 5,
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100))),
        child: Text("Register",
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget buildSignIn() {
    return Container(
        alignment: Alignment.center,
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignInScreen.routeName),
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                  text: 'Already have an Account ? ',
                  style: TextStyle(
                      color: Color(0xffBDBDBD),
                      fontSize: 16,
                      fontWeight: FontWeight.w500)),
              TextSpan(
                  text: 'Login',
                  style: TextStyle(
                      color: Color(0xff0D4335),
                      fontSize: 16,
                      fontWeight: FontWeight.bold))
            ]),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.all(12),
            child: ListView(children: <Widget>[
              Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(top: 20, bottom: 45),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: const Color(0xff0d4335),
                        fontWeight: FontWeight.w900,
                        fontSize: 30),
                  )),
              Padding(
                padding: EdgeInsets.only(right: 15, left: 15),
                child: TextFormField(
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      fillColor: Color(0xfff6f6f6),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: Color(0xffe8e8e8))),
                      hintText: 'Full Name',
                      hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15, left: 15, top: 10),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                      fillColor: Color(0xfff6f6f6),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: Color(0xffe8e8e8))),
                      hintText: 'E-mail Address',
                      hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 15, left: 17, top: 20),
                  child: Text(
                    'Gender',
                    style: TextStyle(
                        color: const Color(0xff425F5D),
                        fontWeight: FontWeight.w800,
                        fontSize: 16),
                  )),
              Row(children: <Widget>[
                Expanded(
                  flex: 1,
                  child: RadioListTile(
                    value: 0,
                    groupValue: _groupValue,
                    title: Text(
                      "Male",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w500,
                        fontSize: getProportionateScreenHeight(16),
                      ),
                    ),
                    onChanged: (newValue) =>
                        setState(() => _groupValue = newValue),
                    activeColor: kPrimaryColor,
                    selected: false,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: RadioListTile(
                    value: 1,
                    groupValue: _groupValue,
                    title: Text("Female",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.w500,
                          fontSize: getProportionateScreenHeight(16),
                        )),
                    onChanged: (newValue) =>
                        setState(() => _groupValue = newValue),
                    activeColor: kPrimaryColor,
                    selected: false,
                  ),
                ),
              ]),
              Padding(
                padding: EdgeInsets.only(right: 15, left: 15, top: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                      fillColor: Color(0xfff6f6f6),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: Color(0xffe8e8e8))),
                      hintText: 'Username',
                      hintStyle: TextStyle(
                          color: Colors.grey[400],
                          fontWeight: FontWeight.w600,
                          fontSize: 16)),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15, left: 15, top: 10),
                child: TextFormField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    fillColor: Color(0xfff6f6f6),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Color(0xffe8e8e8))),
                    hintText: 'Password',
                    hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                    suffixIcon: IconButton(
                        color: _isObscure ? Colors.grey[400] : kPrimaryColor,
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        }),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15, left: 15, top: 10),
                child: TextFormField(
                  obscureText: _isObscure,
                  decoration: InputDecoration(
                    fillColor: Color(0xfff6f6f6),
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide(color: Color(0xffe8e8e8))),
                    hintText: 'Confirm Password',
                    hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                    suffixIcon: IconButton(
                        color: _isObscure ? Colors.grey[400] : kPrimaryColor,
                        icon: Icon(_isObscure
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _isObscure = !_isObscure;
                          });
                        }),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: getProportionateScreenHeight(20)),
                child: buildAgree1(),
              ),
              Padding(
                padding: EdgeInsets.only(top: getProportionateScreenHeight(10)),
                child: buildAgree2(),
              ),
              buildButtonReg(),
              Padding(
                padding:
                    EdgeInsets.only(bottom: getProportionateScreenHeight(40)),
                child: buildSignIn(),
              )
            ])));
  }
}
