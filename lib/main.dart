import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
var color = Colors.red;


void onRedTap(){
  color = Colors.red;
  setState(() {});
}

void onGreenTap(){
  color = Colors.green;
  setState(() {});
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BLoC with Stream'),
      ),
      body: Center(
          child: AnimatedContainer(
              height: 100,
              width: 100,
              color: color,
              duration: const Duration(milliseconds: 500)),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: onRedTap,
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: onGreenTap,
          )
        ],
      ),
    );
  }
}
