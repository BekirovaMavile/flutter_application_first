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
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Text(
        'Shadowhunters!',
        style: TextStyle(fontSize: 30),
      ),
      )
      )
    );
  }
}

