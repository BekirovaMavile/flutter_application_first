import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Counter',
        theme: ThemeData(
          primarySwatch: Colors.green,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: MyHomePage(
          title: 'Counter',
          centerTitle: true,
        ));
  }
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePage({Key? key, this.title = 'Counter', this.centerTitle = true})
      : super(key: key);

  final String title;
  bool centerTitle;

  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 50;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: widget.centerTitle,
      ),
      body: Container(
        color: Color.fromARGB(255, 121, 203, 140),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Tap \"-\" to decrement',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              Container(
                width: double.infinity,
                margin: EdgeInsets.symmetric(horizontal: 160.0, vertical: 5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.indigo[50],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.remove),
                      onPressed: _decrementCounter,
                    ),
                    Text(
                      '$_counter',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: _incrementCounter,
                    ),
                  ],
                ),
              ),
              Text(
                'Tap \"+\" to increment',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
