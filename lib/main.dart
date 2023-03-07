import 'package:flutter/material.dart';
import 'package:flutter_application_1/color_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      home: MyPage,
    );
  }
}

class MyPage extends StatelessWidget {
  final int accountId;
  final int scopeId;
  
  MyPage(this.accountId, this.scopeId);
  
  Widget build(BuildContext context) {
    return new MyWidget(accountId, scopeId);
  }
}

class MyWidget extends StatelessWidget {
  final int accountId;
  final int scopeId;
  
  MyWidget(this.accountId, this.scopeId);
  @override
  Widget build(BuildContext context) {

    new MyOtherWidget(accountId, scopeId);
  }
}
