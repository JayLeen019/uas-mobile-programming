import 'package:flutter/material.dart';
import 'components/body.dart';

class ProductDetailScreen extends StatelessWidget {
  static String routeName = "/ProductDetailScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      // bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
