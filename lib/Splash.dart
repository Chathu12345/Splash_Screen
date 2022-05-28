import 'dart:js';
import 'package:flutter/material.dart';
import 'home.dart';
import 'main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatehome();
  }

  _navigatehome()async{
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
      this.context, MaterialPageRoute(builder: (context) => MyHomePage(title: 'GFG',)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100, 
              width: 100, color: 
              Colors.blue,
              ),
            Container(
              child: Text(
                'Splash Screen', 
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
             ),
            ),
          ],
        ),
      ),
    );
  }
}