import 'package:flutter/material.dart';
import 'package:innisfree/components/bottom_nav_bar.dart';
import 'components/body.dart';

class CatalogScreen extends StatelessWidget {
  static String routeName = "/catalog";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
      // bottomNavigationBar: MyBottomNavBar(),
    );
  }
}
