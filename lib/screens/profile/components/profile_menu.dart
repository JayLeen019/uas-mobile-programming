import 'package:flutter/material.dart';
// import 'package:innisfree/screens/home/components/home_content.dart';
// import 'package:innisfree/screens/home/home_screen.dart';
import 'profile_edit.dart';

Widget buildPrf() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      // SizedBox(height: 10),
      Container(
        child: Text(
          "Profile",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xff0d4335),
          ),
        ),
      ),
    ],
  );
}

Widget buildPena(context) {
  return Column(
    children: <Widget>[
      // SizedBox(height: 10),
      Container(
        child: IconButton(
          icon: Icon(Icons.create, color: Color(0xff0D4335)),
          onPressed: () {
            Navigator.pushNamed(context, ProfileEdit.routeName);
          },
        ),
      ),
    ],
  );
}

Widget buildArrowback(context) {
  return Column(
    children: <Widget>[
      // SizedBox(height: 10),
      Container(
        child: IconButton(
          icon: Icon(Icons.arrow_back, color: Color(0xff0D4335), size: 30),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    ],
  );
}

Widget buildLogout() {
  return Column(
    children: <Widget>[
      SizedBox(height: 10),
      Container(
        height: 50,
        width: 430,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: Colors.white,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
          onPressed: () => print('Log Out Pressed'),
          child: Text(
            "Log Out",
            style: TextStyle(
              color: Color(0xff0d4335),
              fontSize: 16,
            ),
          ),
        ),
      ),
    ],
  );
}

Widget buildMyacc() {
  return Column(
    children: <Widget>[
      SizedBox(height: 20.0),
      ExpansionTile(
        leading: new Icon(
          Icons.people_outline_outlined,
          size: 30.0,
          color: Color(0xff0d4335),
        ),
        title: Text(
          "My Account",
          style: TextStyle(
              color: Color(0xff0d4335),
              fontSize: 16.0,
              fontWeight: FontWeight.bold),
        ),
        children: <Widget>[
          ListTile(
            title: Text(
              'Email :',
            ),
          ),
          ListTile(
            title: Text(
              'Gender :',
            ),
          ),
          ListTile(
            title: Text(
              'Date of Birth :',
            ),
          ),
        ],
      ),
    ],
  );
}

Widget buildCredit() {
  final dataString = '''Created by: 
      190030015 - Frensia Tanaga Anaclaudia 
      190030406 - Jacky leonardo
      190030551 - Ni Kadek Dwi Sabrina
      190030576 - Zidan Syahrizal
      190030219 - I Putu Mahendra Wiranata 
      190030111 - Wahyu Adi Pratama
    ''';

  return Column(
    children: <Widget>[
      ExpansionTile(
        leading: new Icon(
          Icons.privacy_tip_sharp,
          size: 30.0,
          color: Color(0xff0d4335),
        ),
        title: Text(
          "Credit",
          style: TextStyle(
              color: Color(0xff0d4335),
              fontSize: 16.0,
              fontWeight: FontWeight.bold),
        ),
        children: <Widget>[
          ListTile(
            title: Text(
              'Version :1.0',
            ),
          ),
          ListTile(
            title: Text(dataString),
          ),
        ],
      ),
    ],
  );
}

Widget buildAv() {
  return Column(
    children: <Widget>[
      SizedBox(height: 20),
      CircleAvatar(
        backgroundImage: AssetImage("assets/images/dp.jpg"),
        radius: 70.0,
      ),
      SizedBox(height: 10),
      Text(
        'Kocinki',
        style: TextStyle(
          color: Color(0xff0d4335),
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),
      Text(
        'Araso_300',
        style: TextStyle(
          color: Color(0xff0d4335),
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    ],
  );
}

Widget buildButtonLogout() {
  return Container(
    height: 75,
    padding: EdgeInsets.all(13),
    width: double.infinity,
    child: ElevatedButton.icon(
      style: ButtonStyle(
        shadowColor: MaterialStateProperty.all<Color>(Colors.transparent),
        alignment: Alignment.centerLeft,
        backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
      ),
      label: Text("Log out",
          style: TextStyle(
              color: Color(0xff0d4335),
              fontWeight: FontWeight.bold,
              fontSize: 16)),
      onPressed: () => print('Log Out Pressed'),
      icon: Icon(
        Icons.logout,
        color: Color(0xff0d4335),
        size: 30,
      ),
    ),
  );
}

Widget buildButtonDlt2(BuildContext context) {
  return Container(
    child: TextButton(
      style: TextButton.styleFrom(
        textStyle: const TextStyle(fontSize: 20),
        primary: Colors.red,
      ),
      onPressed: () => print('Delete Pressed'),
      child: const Text('Delete Account'),
    ),
  );
}

class Profil extends StatefulWidget {
  @override
  _ProfilState createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  final _messangerKey = GlobalKey<ScaffoldMessengerState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        body: Container(
          // height: double.infinity,
          // width: double.infinity,
          padding: EdgeInsets.only(top: 4, left: 10, right: 20),
          child: Center(
              child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  buildArrowback(context),
                  buildPena(context),
                ],
              ),
              SizedBox(height: 15),
              Column(
                children: <Widget>[],
              ),
              buildPrf(),
              buildAv(),
              SizedBox(height: 15),
              buildMyacc(),
              SizedBox(height: 15),
              buildCredit(),
              SizedBox(height: 5),
              buildButtonLogout(),
              buildButtonDlt2(context),
            ],
          )),
        ),
      ),
    );
  }
}
