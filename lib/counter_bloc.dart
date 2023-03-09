import 'dart:async';
import 'package:flutter/material.dart';

class CounterBloc{
  CounterBloc() {
    _eventStreamController.stream.listen(_mapEventToState);
  }

  final _counterStreamController = StreamController<String>();
  final _eventStreamController = StreamController<String>();

  Stream<String> get counterForListen => _counterStreamController.stream;
  StreamSink<String> get sinkForSendEvent => _eventStreamController.sink;
  var counter = 50;
  _incrementCounter(){
    counter++;
  }
  _decrementCounter() {
    counter--;
  }

  void _mapEventToState(String event){
    if(event == 'increment'){
      _counterStreamController.sink.add(_incrementCounter());
    }
    if(event == 'decrement'){
      _counterStreamController.sink.add(_decrementCounter());
    }
  }
}