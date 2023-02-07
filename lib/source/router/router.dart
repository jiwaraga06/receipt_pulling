import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:receipt_pulling/source/pages/Auth/login.dart';
import 'package:receipt_pulling/source/pages/Auth/splash.dart';
import 'package:receipt_pulling/source/pages/Menu/ReceivePulling/filter.dart';
import 'package:receipt_pulling/source/pages/Menu/ReceivePulling/insert.dart';
import 'package:receipt_pulling/source/pages/Menu/ReceivePulling/receivepulling.dart';
import 'package:receipt_pulling/source/pages/Menu/bottomNavBar.dart';
import 'package:receipt_pulling/source/router/string.dart';

class RouterNavigation {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SPLASH:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case LOGIN:
        return MaterialPageRoute(builder: (context) => Login());
      case BOTTOM_NAV_BAR:
        return MaterialPageRoute(builder: (context) => CustomBottomNavbar());
      case RECEIVE_PULLING:
        return MaterialPageRoute(builder: (context) => ReceivePulling());
      case FILTER_RECEIVE_PULLING:
        return MaterialPageRoute(builder: (context) => FilterReceivePulling());
      case INSERT_RECEIVE_PULLING:
        return MaterialPageRoute(builder: (context) => InsertReceivePulling());
      default:
        return null;
    }
  }
}
