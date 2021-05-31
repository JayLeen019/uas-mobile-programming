import 'package:flutter/material.dart';
import 'package:innisfree/size_config.dart';

import '../../../constants.dart';

class CarousellBanner extends StatelessWidget {
  const CarousellBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          CarouselBannerCard(
            image: "assets/images/carousel/Carousel1.jpg",
            press: () {},
          ),
          CarouselBannerCard(
            image: "assets/images/carousel/Carousel2.jpeg",
            press: () {},
          ),
          CarouselBannerCard(
            image: "assets/images/carousel/Carousel3.jpeg",
            press: () {},
          ),
        ],
      ),
    );
  }
}

class CarouselBannerCard extends StatelessWidget {
  const CarouselBannerCard({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(
          right: kDefaultPadding - 10,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width - kDefaultPadding * 2,
        height: getProportionateScreenWidth(180),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(getProportionateScreenWidth(10)),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
