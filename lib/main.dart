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
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  ColorBloc _bloc = ColorBloc();

  @override
  void dispose(){
    _bloc.dispose();
    super.dispose();
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BLoC with Stream'),
      ),
    body: Center(
      child: StreamBuilder(
        stream: _bloc.outputStateStream,
        initialData: Colors.red,
        builder: (context, snapshot){
          return AnimatedContainer(
            height: 100,
            width: 100,
            color: snapshot.data,
            duration: const Duration(milliseconds: 500)
          );
        },
      )
    ),
    floatingActionButton: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {
            _bloc.inputEventSink.add(ColorEvent.event_red);
          },
        ),
        const SizedBox(width: 10),
        FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {
            _bloc.inputEventSink.add(ColorEvent.event_green);
          },
        )
      ],
      ),
    );
  }
}