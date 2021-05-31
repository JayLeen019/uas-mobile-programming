import 'package:flutter/material.dart';
import 'package:innisfree/constants.dart';
import 'package:innisfree/screens/sign_in/sign_in_screen.dart';
import 'package:innisfree/size_config.dart';
import 'obs_content.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;
  // Ubah text dan gambar onboarding screen menjadi list
  List<Map<String, String>> splashData = [
    {
      "text": "Innisfree, \nan island giving life to your skin",
      "image": "assets/images/OBSIO1.png"
    },
    {
      "text":
          "Using the wisdom of nature, \nthe eco-conscious Innisfree delivers \ntruly healthy beauty to customers",
      "image": "assets/images/OBSIO2.png"
    },
    {
      "text": "We pursue healthy beauty with \n“reliable ingredients”.",
      "image": "assets/images/OBSIO3.png"
    },
    {
      "text":
          "We provide \n“experiences that \nsatisfy all your senses” \nwith the diversity of pure nature.",
      "image": "assets/images/OBSIO4.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 10,
              child: PageView.builder(
                physics: ClampingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => OnBoardingContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => indexIndicator(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    currentPage != 3
                        ? Expanded(
                            flex: 5,
                            child: Align(
                              alignment: FractionalOffset.center,
                              child: TextButton(
                                onPressed: () {
                                  _pageController.nextPage(
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.ease,
                                  );
                                },
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    Text(
                                      'Next',
                                      style: TextStyle(
                                        color: kSecondaryColor,
                                        fontSize: 18.0,
                                      ),
                                    ),
                                    SizedBox(width: 10.0),
                                    Icon(
                                      Icons.arrow_forward,
                                      color: kSecondaryColor,
                                      size: 24.0,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        : MaterialButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, SignInScreen.routeName);
                            },
                            minWidth: getProportionateScreenWidth(240),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    getProportionateScreenWidth(50))),
                            color: kSecondaryColor,
                            textColor: kPrimaryColor,
                            height: getProportionateScreenHeight(40),
                            child: Text("Continue",
                                style: TextStyle(
                                    fontSize: getProportionateScreenHeight(14),
                                    fontWeight: FontWeight.bold)),
                          ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer indexIndicator({int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 10),
      height: getProportionateScreenHeight(18),
      width: currentPage == index
          ? getProportionateScreenWidth(24)
          : getProportionateScreenWidth(24),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: currentPage == index
              ? AssetImage('assets/images/IndexOn.png')
              : AssetImage('assets/images/IndexOff.png'),
        ),
      ),
    );
  }
}
