import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:receipt_pulling/source/pages/Menu/Logout/logout.dart';
import 'package:receipt_pulling/source/pages/Menu/ReceivePulling/receivepulling.dart';

class CustomBottomNavbar extends StatefulWidget {
  const CustomBottomNavbar({super.key});

  @override
  State<CustomBottomNavbar> createState() => _CustomBottomNavbarState();
}

class _CustomBottomNavbarState extends State<CustomBottomNavbar> {
  var _bottomNavIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    ReceivePulling(),
    Logout(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_bottomNavIndex),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          currentIndex: _bottomNavIndex,
          onTap: (value) {
            setState(() {
              _bottomNavIndex = value;
            });
          },
          selectedItemColor: Color(0XFF27496D),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.listCheck),
              activeIcon: Icon(
                FontAwesomeIcons.listCheck,
                color: Color(0XFF27496D),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.logout),
              activeIcon: Icon(
                Icons.logout,
                color: Color(0XFF27496D),
              ),
              label: '',
            ),
          ]),
    );
  }
}
