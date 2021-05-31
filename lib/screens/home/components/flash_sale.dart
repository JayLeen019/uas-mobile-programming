import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class FlashSale extends StatelessWidget {
  const FlashSale({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          FlashSaleCard(
            image: "assets/images/cherryBlossom.png",
            title: "Jeju Cherry Blossom Jelly Cream",
            stock: 22,
            price: 447,
            press: () {},
          ),
          FlashSaleCard(
            image: "assets/images/greenTeaMask.png",
            title: "Jeju Volcanic Pore Cleansing Foam",
            stock: 53,
            price: 440,
            press: () {},
          ),
          FlashSaleCard(
            image: "assets/images/superVolcanic.png",
            title: "Super Volcanic Pore Clay Mask",
            stock: 79,
            price: 200,
            press: () {},
          ),
          FlashSaleCard(
            image: "assets/images/superVolcanic.png",
            title: "Super Volcanic Pore Clay Mask",
            stock: 29,
            price: 350,
            press: () {},
          ),
        ],
      ),
    );
  }
}

class FlashSaleCard extends StatelessWidget {
  const FlashSaleCard({
    Key key,
    this.image,
    this.title,
    this.stock,
    this.price,
    this.press,
  }) : super(key: key);

  final String image, title;
  final int price, stock;
  final Function press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      padding: EdgeInsets.all(kDefaultPadding / 2),
      height: size.height * 0.3,
      width: size.width * 0.37,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 5),
              blurRadius: 10,
              color: kPrimaryColor.withOpacity(0.3),
            )
          ]),
      child: Column(
        children: <Widget>[
          //foto produk
          Image.asset(image, height: size.height * 0.15),

          //deskripsi lengkap produk
          Padding(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '\$$price',
                  style: Theme.of(context)
                      .textTheme
                      .button
                      .copyWith(color: kPrimaryColor),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "$title",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w900),
                ),
                SizedBox(
                  height: 10,
                ),
                LinearPercentIndicator(
                  alignment: MainAxisAlignment.spaceAround,
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  backgroundColor: Colors.grey,
                  progressColor: Colors.greenAccent,
                  width: size.width * 0.37 - 40,
                  animation: true,
                  animationDuration: 2000,
                  lineHeight: 15,
                  percent: 1 - (stock / 100), //sesuaikan dg banyak stok
                  center: Text(
                    'tersisa $stock',
                    style: TextStyle(
                        fontSize: 10,
                        color: Colors.black54,
                        fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
