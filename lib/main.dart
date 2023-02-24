import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Building Layouts'),
            centerTitle: true,
          ),
          // или виджет Center, но без Alignment
          body: Align(
            alignment: Alignment.center,
            child: Text(
              'Shadowhunters!',
              style: TextStyle(fontSize: 30),
            ),
          )),
    );
  }
}
