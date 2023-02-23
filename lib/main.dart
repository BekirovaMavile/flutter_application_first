// import 'dart:async';

import 'package:flutter/material.dart';

// точка входа в программу
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:ThemeData(fontFamily: 'TiltNeon'),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Adding Assets'),
        ),
        body: Center(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image(
                image: AssetImage('assets/images/11.jpeg'),
              ),
              Image.asset('assets/icons/22.png'),
              Positioned(
                top: 16,
                left: 115,
                child: Text(
                  "My custom font",
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    // fontFamily: 'TiltNeon',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
