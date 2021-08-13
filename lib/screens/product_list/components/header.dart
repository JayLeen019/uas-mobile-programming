import 'package:flutter/material.dart';
import 'catalog.dart';

class HeaderWithSearchBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // margin: EdgeInsets.only(bottom: 20.0 * 2.5),
      // It will cover 20% of our total height
      height: size.height,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              bottom: 36 + 20.0,
            ),
            height: size.height * 0.3,
            decoration: BoxDecoration(
              color: Color(0xff0B352A),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.symmetric(vertical: 10.0),
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            // height: 50,

            //search bar, notif dan cart
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.search,
                    size: 30, color: Colors.amber[200]?.withOpacity(0.7)),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                Expanded(
                  // flex: 6,
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
                              color: Colors.amber[200]?.withOpacity(0.5))),
                      // focusedBorder: InputBorder.none,
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.amber[200]?.withOpacity(0.75))),
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
                  color: Colors.amber[200]?.withOpacity(0.7),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                ),
                //icon keranjang
                Icon(
                  Icons.shopping_cart,
                  size: 30,
                  color: Colors.amber[200]?.withOpacity(0.7),
                )
              ],
            ),
          ),
          Positioned(
              top: 75,
              left: 0,
              right: 0,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  "SKINCARE",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white.withOpacity(0.85),
                      letterSpacing: 2),
                )
              ])),
          CatalogGrid()
        ],
      ),
    );
  }
}
