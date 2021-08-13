import 'package:flutter/material.dart';
import 'package:innisfree/screens/product_list/model/catalog_data.dart';
import 'package:innisfree/screens/product_detail/product_detail_screen.dart';
import 'dart:async';
import 'package:innisfree/data.dart';
import 'dart:convert';

class CatalogGrid extends StatefulWidget {
  final String initialRoute;
  CatalogGrid({this.initialRoute});

  @override
  _CatalogGridState createState() => _CatalogGridState();
}

class _CatalogGridState extends State<CatalogGrid> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // Widget build(BuildContext context) {
    //   var _myData = getDataProduct();
    //   FutureOr onGoBack(dynamic value) {
    //     _myData = getDataProduct();
    //     setState(() {});
    //   }
    // }

    //untuk menampilkan grid view
    return Center(
      heightFactor: size.height * 0.9,
      child: Container(
        width: size.width * 0.85,
        margin: EdgeInsets.fromLTRB(8, 120, 8, 0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 0.75,
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0),
          itemBuilder: (BuildContext context, index) {
            final CatalogData produk = catalogDataList[index];
            return Container(
              // height: size.height * 0.4,
              // width: size.width * 0.3 - 50,
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, ProductDetailScreen.routeName);
                },
                child: new Card(
                  semanticContainer: true,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18)),
                  elevation: 5,
                  // color: Colors.blue,
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.blueGrey[50],
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(18),
                                  topLeft: Radius.circular(18),
                                  bottomLeft: Radius.circular(25),
                                  bottomRight: Radius.circular(25)),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(0, 2),
                                    blurRadius: 10,
                                    color: Colors.black87.withAlpha(50))
                              ]),
                          width: double.infinity,
                          child: Image.asset(
                            produk.imageAsset,
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('${produk.namaProduk}',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "${produk.harga}",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 11,
                                      fontWeight: FontWeight.bold),
                                ),
                              ])),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ReviewWidget(
                            activated: 4), //from activated : 4 to total : 4
                      )
                    ],
                  ),
                ),
              ),
            );
            // }
          },
          itemCount: catalogDataList.length,
        ),
      ),
    );
  }
}

class ReviewWidget extends StatelessWidget {
  final int total;
  final int activated;

  const ReviewWidget({Key key, this.total = 5, this.activated})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
        children: List.generate(total, (index) {
      var filled = index < activated;
      return Icon(
        filled ? Icons.star : Icons.star_border,
        size: 15,
      );
    }));
  }
}
