import 'package:flutter/material.dart';
import './screens/BBonboard.dart';
import 'dart:async';

void main() => runApp(MaterialApp(
    home: Splash(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
    )));

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 7),
      () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BBonboard(),
            ));
      },
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 180,
          width: double.infinity,
          child: Image(image: AssetImage('assets/bbLogo.png')),
        ),
      ),
    );
  }
}
