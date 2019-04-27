import 'dart:async';

import 'package:flutter/material.dart';
import 'package:re_jek_ft/screens/PreloginScreen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 5), () {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PreloginScreen()));
    });

    return Scaffold(
      body: Center(
        child: Text(
          "reJEK¡",
          style: TextStyle(
              color: Colors.green,
              fontSize: 50,
              fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
