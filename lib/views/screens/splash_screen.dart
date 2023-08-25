import 'dart:async';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed("home_page");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    "https://i.pinimg.com/originals/74/92/7c/74927cce08c1cbdcb409759b1453b2f0.gif"),
                fit: BoxFit.cover),
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
