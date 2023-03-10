import 'package:flutter/material.dart';
import 'package:flutter_application_1/counter_bloc.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(
        title: 'Counter',
        // centerTitle: true,
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, this.title = 'Counter'})
      : super(key: key);

  final String title;
  // final bool centerTitle;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  final _counter = 50;
final _bloc = CounterBloc();

  // int _counter = 50;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  // void _decrementCounter() {
  //   setState(() {
  //     _counter--;
  //   });
  // }

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        // centerTitle: widget.centerTitle,
      ),
      body: Center(
        child: StreamBuilder(
          stream: _bloc.counterForListen,
          builder: (context, snapshot) {
          return Container(
        color: const Color.fromARGB(255, 121, 203, 140),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'Tap "-" to decrement',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              Container(
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(horizontal: 160.0, vertical: 5),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.indigo[50],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed:(){ _bloc.sinkForSendEvent.add('decrement');
                      },
                    ),
                    Text(
                      '$_counter',
                      style: Theme.of(context).textTheme.headline5,
                    ),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed:(){ _bloc.sinkForSendEvent.add('increment');
                      }
                    ),
                  ],
                ),
              ),
              const Text(
                'Tap "+" to increment',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ],
          ),
        ),
      );
          },
        ),
      )
    );
  }
}
