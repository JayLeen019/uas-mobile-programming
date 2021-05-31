import 'package:flutter/material.dart';
import 'package:innisfree/constants.dart';
import 'package:innisfree/screens/home/components/product_recommendation.dart';
import 'header_with_seachbox.dart';
import 'flash_sale.dart';
import 'title_with_more_bbtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Total height dan width dari screen
    Size size = MediaQuery.of(context).size;
    // Scroll jika device lebih kecil dari total konten
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: "Flash Sale", press: () {}),
          FlashSale(),
          SizedBox(height: kDefaultPadding),
          ProductRecom(),
          SizedBox(height: kDefaultPadding),
        ],
      ),
    );
  }
}
