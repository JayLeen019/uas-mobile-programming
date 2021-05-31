import 'package:flutter/material.dart';
import 'package:innisfree/size_config.dart';

class MyBottomNavBar extends StatefulWidget {
  const MyBottomNavBar({key}) : super(key: key);

  @override
  State<MyBottomNavBar> createState() => _MyBottomNavBarState();
}

class _MyBottomNavBarState extends State<MyBottomNavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Support',
      style: optionStyle,
    ),
    Text(
      'Index 2: Catalog',
      style: optionStyle,
    ),
    Text(
      'Index 3: Profile',
      style: optionStyle,
    ),
    Text(
      'Index 4: More',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(80),
      width: getProportionateScreenWidth(360),
      decoration: BoxDecoration(
        color: Color(0xff024137),
      ),

      // bottomNavigationBar
      child: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color(0xff024137),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.face),
            label: 'Support',
            backgroundColor: Color(0xff024137),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books_sharp),
            label: 'Catalog',
            backgroundColor: Color(0xff024137),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Color(0xff024137),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.keyboard_control_sharp),
            label: 'More',
            backgroundColor: Color(0xff024137),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xffFFFFFF),
        unselectedItemColor: Color(0xffC4C4C4),
        onTap: _onItemTapped,
      ),
    );
  }
}
