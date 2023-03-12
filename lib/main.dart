import 'package:flutter/material.dart';
import 'package:flutter_application_1/color_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Counter',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // var color = Colors.red;
  final _bloc = ColorBloc();

  // void onRedTap() {
  //   color = Colors.red;
  //   setState(() {});
  // }

  // void onGreenTap() {
  //   color = Colors.green;
  //   setState(() {});
  // }
  @override
  void dispose() {
    _bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BLoC with Stream'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: _bloc.colorForListen,
          initialData: Colors.red,
          builder: (context, snapshot) {
          return AnimatedContainer(
            height: 100,
            width: 100,
            color: snapshot.data,
            duration: const Duration(milliseconds: 500)
            );
        },
      ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            backgroundColor: Colors.red,
            onPressed: (){
              _bloc.sinkForEventSend.add('red');
            }
          ),
          const SizedBox(width: 10),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
                _bloc.sinkForEventSend.add('green');
              }
          )
        ],
      ),
    );
  }
}
