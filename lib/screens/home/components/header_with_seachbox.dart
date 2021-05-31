import 'package:flutter/material.dart';
import 'package:innisfree/screens/home/components/carousel_banner.dart';

import '../../../constants.dart';

class HeaderWithSearchBox extends StatelessWidget {
  const HeaderWithSearchBox({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
      // It will cover 20% of our total height
      height: size.height * 0.4,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: kDefaultPadding,
              right: kDefaultPadding,
              bottom: 36 + kDefaultPadding,
            ),
            height: size.height * 0.2,
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.symmetric(vertical: kDefaultPadding + 10),
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
            height: 50,

            //search bar, notif dan cart
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.search,
                    size: 30, color: Colors.amber[200].withOpacity(0.7)),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Expanded(
                  flex: 6,
                  child: TextField(
                    style: TextStyle(
                        color: Colors.white
                            .withOpacity(0.8)), //warna untuk text yg diinput
                    onChanged: (value) {},
                    cursorColor: Colors.amber, //bisa di ganti
                    decoration: InputDecoration(
                      hintText: "Search",
                      hintStyle: TextStyle(
                        color: Colors.white.withOpacity(0.3),
                      ),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.amber[200].withOpacity(0.5))),
                      // focusedBorder: InputBorder.none,
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.amber[200].withOpacity(0.75))),
                      // prefixIcon: Icon(Icons.search,
                      //     size: 30, color: Colors.amber[100]),
                    ),
                  ),
                ),
                // SvgPicture.asset("assets/icons/search.svg"),
                Padding(padding: EdgeInsets.all(10)),

                //icon notifikasi
                Icon(
                  Icons.notifications,
                  size: 30,
                  color: Colors.amber[200].withOpacity(0.7),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),

                //icon keranjang
                Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: Colors.amber[200].withOpacity(0.7),
                )
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: kDefaultPadding - 20),
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: CarousellBanner()))
          // Container(
          //     margin: EdgeInsets.symmetric(horizontal: kDefaultPadding - 20),
          //     padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          //     child: CarousellBanner())
        ],
      ),
    );
  }
}
