import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mavi',
      theme: ThemeData.dark(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key, this.title = 'Counter', this.centerTitle = true});

  final String title;
  final bool centerTitle;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 50;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    _counter--;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: widget.centerTitle,
      ),
      body: Container(
        color: Colors.green,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                '"-" to decrement',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Container(
                width: 130,
                margin:
                    const EdgeInsets.symmetric(vertical: 10),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.indigo[50],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                        onPressed: _decrementCounter,
                        icon: const Icon(Icons.remove),
                        color: Colors.black),
                    Text(
                      '$_counter',
                      style: const TextStyle(color: Colors.black),
                    ),
                    IconButton(
                        onPressed: _incrementCounter,
                        icon: const Icon(Icons.add),
                        color: Colors.black),
                  ],
                ),
              ),
              const Text(
                '"+" to increment',
                style: TextStyle(color: Colors.white, fontSize: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
