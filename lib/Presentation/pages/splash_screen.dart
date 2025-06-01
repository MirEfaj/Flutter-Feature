import 'package:flutter/material.dart';
import 'dart:async';

import 'signin_page.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SigninPage()),
      );
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
    //  backgroundColor: Colors.blue, // Splash screen background color
      body: Center(
        child: Image.asset('assets/images/img.png')
      ),
    );
  }
}


