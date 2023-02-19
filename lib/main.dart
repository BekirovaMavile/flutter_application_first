import 'package:flutter/material.dart';

// точка входа в программу
void main() {
  // создание и вывод на экран виджета
  runApp(const MaterialApp(
    home: Center(
        child: Text(
          "Hello Flutter",
          textDirection: TextDirection.ltr,
          style: TextStyle(
              color: Colors.red, fontSize: 28.0, fontWeight: FontWeight.bold),
        ),
      ),
    ),
  );
}
