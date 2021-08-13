import 'package:flutter/material.dart';
import 'components/body.dart';

class ProductListScreen extends StatelessWidget {
  static String routeName = "/ProductListScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      // bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
