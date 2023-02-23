// import 'dart:async';

import 'package:flutter/material.dart';

// точка входа в программу
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
          ],
        )),
      ),
    );
  }
}
