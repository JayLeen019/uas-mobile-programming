import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'review.dart';

// void main() {
//   runApp(ProDetl());
// }

class ProDetl extends StatefulWidget {
  const ProDetl({Key key}) : super(key: key);

  @override
  _ProDetlState createState() => _ProDetlState();
}

class _ProDetlState extends State<ProDetl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        // height: double.infinity,
        // width: double.infinity,
        padding: EdgeInsets.only(left: 18, right: 18),
        child: ListView(
          children: <Widget>[
            productImage(context),
            productNameAndPrice(context),
            logoSelect(context),
            shortDesc(context),
            longDesc(context),
            Review(),
            Container(
              //kosong, kalau gak kepake hapus aja
              height: 200,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: buyButton(context),
            ),
          ],
        ),
      ),
    );
  }
}

Widget productImage(BuildContext context) {
  return Container(
    width: 360,
    height: 360,
    padding: EdgeInsets.all(25),
    color: Colors.white,
    child: Image.network(
        "https://www.innisfree.com/id/id/resources/upload/product/35483_l.png"),
  );
}

Widget productNameAndPrice(BuildContext context) {
  return Container(
    width: 360,
    height: 80,
    padding: EdgeInsets.all(8),
    color: Colors.white,
    child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            style: GoogleFonts.inter(
              textStyle: TextStyle(
                  color: Color.fromRGBO(69, 90, 100, 100),
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            children: [
              TextSpan(text: 'Jeju Cherry Blossom Jelly Cream 50 mL\n'),
              TextSpan(
                  text: '30.000',
                  style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(93, 176, 117, 1))))
            ])),
  );
}

Widget logoSelect(BuildContext context) {
  return Container(
    width: 360,
    height: 90,
    padding: EdgeInsets.all(15),
    //ini assetsnya juga dari 000webhostku
    child: Center(
      child: Image.network(
          "https://storepedium.000webhostapp.com/images/icon_skincare.png"),
    ),
    color: Colors.white,
  );
}

Widget shortDesc(BuildContext context) {
  return Container(
    padding: EdgeInsets.only(top: 5, bottom: 5),
    // container deskripsi, masukan deskripsi disini
    width: 360,
    height: 86,
    child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            style: GoogleFonts.roboto(
                textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w100,
                    color: Color.fromRGBO(38, 50, 56, 1))),
            children: [
              TextSpan(
                  text:
                      'Krim bertekstur gel yang memberikan kelembaban melimpah pada kulit kering dan kusam, menjadikan kulit lembap dan segar')
            ])),
    color: Colors.white,
  );
}

Widget longDesc(BuildContext context) {
  return Column(
    children: <Widget>[
      ExpansionTile(
        title: Text(
          "Details",
          style: GoogleFonts.inter(
              fontWeight: FontWeight.bold,
              color: Color.fromRGBO(93, 176, 117, 1)),
        ),
        childrenPadding: EdgeInsets.all(5),
        initiallyExpanded: true,
        // iconColor: Color.fromRGBO(93, 176, 117, 1),
        children: <Widget>[
          ListTile(
            //text disini
            title: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean augue sem, mattis bibendum odio vitae, semper fermentum tellus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam suscipit metus volutpat ex ultricies, nec varius libero hendrerit. Aliquam at ante nec lorem faucibus pretium ut interdum tellus. Curabitur bibendum sem nec felis scelerisque, at varius mi viverra. Nulla facilisi. Pellentesque ut ligula mi. Maecenas quis sem tristique, fermentum purus sed, pellentesque arcu. Suspendisse ornare justo eu felis vulputate, sit amet rutrum metus feugiat. Nunc id ex et nunc varius fermentum. Pellentesque sit amet sollicitudin lectus. ",
              style: GoogleFonts.roboto(
                  fontWeight: FontWeight.w300,
                  color: Color.fromRGBO(38, 50, 56, 1)),
            ),
          )
        ],
      ),
      ExpansionTile(
        title: Text("Ingredients",
            style: GoogleFonts.inter(
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(93, 176, 117, 1))),
        initiallyExpanded: true,
        // iconColor: Color.fromRGBO(93, 176, 117, 1),
        childrenPadding: EdgeInsets.all(5),
        children: <Widget>[
          ListTile(
            title: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean augue sem, mattis bibendum odio vitae, semper fermentum tellus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nam suscipit metus volutpat ex ultricies, nec varius libero hendrerit. Aliquam at ante nec lorem faucibus pretium ut interdum tellus. Curabitur bibendum sem nec felis scelerisque, at varius mi viverra. Nulla facilisi. Pellentesque ut ligula mi. Maecenas quis sem tristique, fermentum purus sed, pellentesque arcu. Suspendisse ornare justo eu felis vulputate, sit amet rutrum metus feugiat. Nunc id ex et nunc varius fermentum. Pellentesque sit amet sollicitudin lectus. ",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w300,
                    color: Color.fromRGBO(38, 50, 56, 1))),
          )
        ],
      ),
    ],
  );
}

Widget buyButton(BuildContext context) {
  return Container(
    //tombol buy
    width: 310,
    height: 50,
    margin: EdgeInsets.only(bottom: 5),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color.fromRGBO(2, 65, 65, 1)),
    child: TextButton(
      onPressed: () {},
      child: const Text("Buy Now"),
      style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white)),
    ),
  );
}
