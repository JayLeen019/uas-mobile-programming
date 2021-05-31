import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:innisfree/screens/home/home_screen.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TapGestureRecognizer _gestureRecognizer = TapGestureRecognizer()
    ..onTap = () {};
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(
              top: 137.0,
            ),
            padding: EdgeInsets.all(10),
            height: 200,
            color: Colors.white,
            child: Image(
              image: AssetImage("assets/images/tampilan.png"),
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            child: Text(
              "Enter verification code\n we just sent to your email",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Color.fromRGBO(13, 67, 53, 1),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              padding: EdgeInsets.all(2),
              width: 54,
              child: TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [LengthLimitingTextInputFormatter(1)],
              ),
            ),
            Container(
              padding: EdgeInsets.all(2),
              width: 54,
              child: TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [LengthLimitingTextInputFormatter(1)],
              ),
            ),
            Container(
              padding: EdgeInsets.all(2),
              width: 54,
              child: TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [LengthLimitingTextInputFormatter(1)],
              ),
            ),
            Container(
              padding: EdgeInsets.all(2),
              width: 54,
              child: TextField(
                keyboardType: TextInputType.number,
                textAlign: TextAlign.center,
                inputFormatters: [LengthLimitingTextInputFormatter(1)],
              ),
            ),
          ]),
          Container(
            padding: EdgeInsets.all(10),
            child: MaterialButton(
                color: Color.fromRGBO(13, 67, 53, 1),
                height: 51,
                minWidth: 320,
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(100)),
                child: Text(
                  "Verify",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                }),
          ),
          Container(
            child: RichText(
              text: TextSpan(
                  text: 'Did not receive your code? ',
                  style: TextStyle(
                    color: Color.fromRGBO(13, 67, 53, 1),
                    fontWeight: FontWeight.normal,
                  ),
                  children: [
                    TextSpan(
                        text: 'Resend',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                        recognizer: _gestureRecognizer)
                  ]),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
