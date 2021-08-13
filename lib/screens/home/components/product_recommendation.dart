import 'package:flutter/material.dart';
import 'package:innisfree/screens/product_list/product_list_screen.dart';
import '../../../constants.dart';

class ProductRecom extends StatefulWidget {
  const ProductRecom({key}) : super(key: key);
  @override
  _ProductRecomState createState() => _ProductRecomState();
}

class _ProductRecomState extends State<ProductRecom> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            height: 24,
            child: Stack(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: kDefaultPadding / 4),
                  child: Text(
                    'Our Product',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    margin: EdgeInsets.only(right: kDefaultPadding / 4),
                    height: 7,
                    color: kPrimaryColor.withOpacity(0.2),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 14),
          Container(
            //MakeUp
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 10,
              bottom: 5,
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/01MakeUp.png"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.16)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 3))
                ]),
            child: InkWell(
              onTap: () {},
              child: Ink(
                height: 102,
                width: 324,
              ),
            ),
          ),
          Container(
            //MakeUp
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 10,
              bottom: 5,
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/02Skincare.png"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.16)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 3))
                ]),
            child: InkWell(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              onTap: () {
                Navigator.pushNamed(context, ProductListScreen.routeName);
              },
              child: Ink(
                height: 102,
                width: 324,
              ),
            ),
          ),
          Container(
            //MakeUp
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 10,
              bottom: 5,
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/03BodyCare.png"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.16)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 3))
                ]),
            child: InkWell(
              onTap: () {},
              child: Ink(
                height: 102,
                width: 324,
              ),
            ),
          ),
          Container(
            //MakeUp
            margin: EdgeInsets.only(
              left: 20,
              right: 20,
              top: 10,
              bottom: 5,
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/04Others.png"),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Color.fromRGBO(0, 0, 0, 0.16)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 3,
                      blurRadius: 3,
                      offset: Offset(0, 3))
                ]),
            child: InkWell(
              onTap: () {},
              child: Ink(
                height: 102,
                width: 324,
              ),
            ),
          ),
        ],
      ),
    );
    //COPY SAMPAI SINI
  }
}
