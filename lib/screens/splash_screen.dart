import 'dart:async';

import 'package:flutter/material.dart';
import 'package:modul_accurate_accounting_v5/screens/home_screen.dart';

class SplashScreen extends StatefulWidget{
  static const String id ="splash_screen";
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  Timer _timer;

  removeScreen() {
    return _timer = Timer(Duration(seconds: 2), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => HomeScreen()));
    });
  }

  @override
  void initState() {
    super.initState();
    removeScreen();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/icon.png",
              width: 250,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 25),
            child: Text(
              'E-Modul Accurate Accounting V5',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}