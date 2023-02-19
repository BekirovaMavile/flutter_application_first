import 'package:flutter/material.dart';

// точка входа в программу
void main() {
  // создание и вывод на экран виджета
  runApp(
    MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        title: const Text("Shadowhunters"),
        centerTitle: true,
        ),
        body: const Center(
          child: Text(
            "This is Homepage Shadowhunters",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.white
              ),
              ),
              ),
        ),
    ),
  );
}
