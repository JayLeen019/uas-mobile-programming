import 'dart:ui';
import 'package:innisfree/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rating_dialog/rating_dialog.dart';
// import 'package:review/main.dart';

class Review extends StatefulWidget {
  @override
  _ReviewState createState() => _ReviewState();
}

String profileUrl =
    'https://i.pinimg.com/originals/be/df/6c/bedf6cff125ecc4f134e31a0e6ed1dcf.jpg';

class _ReviewState extends State<Review> {
  var rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(children: <Widget>[
        Container(
          alignment: Alignment.center,
          child: buildButton(),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12),
          child: listReview(),
        )
      ]),
    );
  }

  openRatingDialog() {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return RatingDialog(
              ratingColor: kPrimaryLightColor,
              title: 'Rate This Product',
              submitButton: 'Submit',
              onCancelled: () => print('cancelled'),
              onSubmitted: (response) {
                print(
                    'rating: ${response.rating}, comment: ${response.comment}');
              });
        });
  }

  Widget buildButton() {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(vertical: 25),
      // width: double.infinity,
      child: ElevatedButton(
        onPressed: openRatingDialog,
        style: ElevatedButton.styleFrom(
            primary: kPrimaryLightColor,
            onPrimary: Colors.white,
            elevation: 5,
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100))),
        child: Text("Add a Review",
            style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold)),
      ),
    );
  }

  Widget listReview() {
    return Container(
      child: Card(
        elevation: 6,
        shadowColor: kPrimaryLightColor,
        child: ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(profileUrl),
          ),
          title: Text(
            'JULE. S',
            style: TextStyle(
                fontSize: 17,
                color: kPrimaryLightColor,
                fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            'Love this product! The smell, color and everything are just lovely',
            style: TextStyle(fontSize: 14, color: Color(0xff425F5D)),
          ),
          trailing: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
            Icon(
              Icons.star,
              color: kPrimaryLightColor,
              size: 12.0,
            ),
            Icon(
              Icons.star,
              color: kPrimaryLightColor,
              size: 12.0,
            ),
            Icon(
              Icons.star,
              color: kPrimaryLightColor,
              size: 12.0,
            ),
            Icon(
              Icons.star,
              color: kPrimaryLightColor,
              size: 12.0,
            ),
            Icon(
              Icons.star,
              color: Color(0xffA1A485),
              size: 12.0,
            ),
          ]),
          isThreeLine: true,
        ),
      ),
    );
  }
}
