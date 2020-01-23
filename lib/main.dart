import 'package:fabrly/buyerInformation.dart';
import 'package:fabrly/contactUs.dart';
import 'package:fabrly/demo.dart';
import 'package:fabrly/filter.dart';
import 'package:fabrly/forgot.dart';
import 'package:fabrly/imageslide.dart';
import 'package:fabrly/login.dart';
import 'package:fabrly/market.dart';
import 'package:fabrly/notifications.dart';
import 'package:fabrly/productDetails.dart';
import 'package:fabrly/productImages.dart';
import 'package:fabrly/signUp.dart';
import 'package:flutter/material.dart';
import 'dart:async';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
    routes: <String, WidgetBuilder>{
      '/market': (context) => Market(),
      '/details': (context) => ProductDetail(),
      '/images': (context) => ProductImages(),
      '/forgot': (context) => Forgot(),
      '/signup': (context) => SignUp(),
      '/buyerinfo': (context) => BuyerInfo(),
      '/notifications': (context) => Notifications(),
      '/contactus': (context) => ContactUs(),
      '/demo': (context) => Demo(),
      '/demo1': (context) => CarouselDemo(),
      '/login': (BuildContext context) => new Login(),
      '/filter': (context) => Filter(),
    },
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  startTime() async {
    var _duration = new Duration(seconds: 4);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/login');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: new Center(
          child: new Image.asset(
            'assets/preloading.gif',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
