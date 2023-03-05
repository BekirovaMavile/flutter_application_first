import 'package:flutter/material.dart';
import 'package:flutter_application_1/counter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  // const HomePage({super.key, this.title = 'Counter', this.centerTitle = true});

  // final String title;
  // final bool centerTitle;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 50;
  CounterBloc _bloc = CounterBloc();

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  // void _decrementCounter() {
  //   _counter--;
  //   setState(() {});
  // }

  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
        backgroundColor: Colors.green,
      ),
//       Container(
// color: Color.fromARGB(255, 123, 242, 127),
//       ),
      body: Container(
        color: const Color.fromARGB(255, 105, 192, 107),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                '"-" to decrement',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              Center(
                child: StreamBuilder(
                  stream: _bloc.outputStateStream,
                  builder: (context, snapshot) {
                    return Container(
                      width: 130,
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.green[50],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              onPressed: () {
                                _bloc.inputEventSink
                                    .add(CounterEvent.event_decrement);
                              },
                              icon: const Icon(Icons.remove),
                              color: Colors.black),
                          Text(
                            '$_counter',
                            style: const TextStyle(color: Colors.black),
                          ),
                          IconButton(
                              onPressed: () {
                                _bloc.inputEventSink
                                    .add(CounterEvent.event_increment);
                              },
                              icon: const Icon(Icons.add),
                              color: Colors.black),
                        ],
                      ),
                    );
                  },
                ),
                //   Text(
                //         '"+" to increment',
                //         style: TextStyle(color: Colors.white, fontSize: 16),
                // ),
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
  // body: Container(
  //   color: const Color.fromARGB(255, 105, 192, 107),
  //   child: Center(
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: <Widget>[
  //         const Text(
  //           '"-" to decrement',
  //           style: TextStyle(color: Colors.white, fontSize: 16),
  //         ),
  //         Container(
  //           width: 130,
  //           margin:
  //               const EdgeInsets.symmetric(vertical: 10),
  //           alignment: Alignment.center,
  //           decoration: BoxDecoration(
  //             color: Colors.green[50],
  //             borderRadius: BorderRadius.circular(10),
  //           ),
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceAround,
  //             children: [
  //               IconButton(
  //                   onPressed: (){ _bloc.inputEventSink.add(CounterEvent.event_decrement);
  //                   },
  //                   icon: const Icon(Icons.remove),
  //                   color: Colors.black),
  //               // Text(
  //               //   '$_bloc',
  //               //   style: const TextStyle(color: Colors.black),
  //               // ),
  //               IconButton(
  //                   onPressed: (){ _bloc.inputEventSink.add(CounterEvent.event_increment);
  //                   },
  //                   icon: const Icon(Icons.add),
  //                   color: Colors.black),
  //             ],
  //           ),
  //         ),
  //         const Text(
  //           '"+" to increment',
  //           style: TextStyle(color: Colors.white, fontSize: 16),
  //         )
  //       ],
  //     ),
  //   ),
  // ),
}
