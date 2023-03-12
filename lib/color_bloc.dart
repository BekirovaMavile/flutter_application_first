import 'package:flutter/material.dart';
import 'dart:async';

class ColorBloc{
  ColorBloc(){
    _eventStreamController.stream.listen(_mapEventToState);
  }
  final _cololStreamController = StreamController<Color>();
  final _eventStreamController = StreamController<String>();

  Stream<Color> get colorForListen => _cololStreamController.stream;
  StreamSink<String> get sinkForEventSend => _eventStreamController.sink;

  void _mapEventToState(String event){
    if(event == 'red'){
      _cololStreamController.sink.add(Colors.red);
    }
    if (event == 'green') {
      _cololStreamController.sink.add(Colors.green);
    }
  }

  void dispose(){
    _cololStreamController.close();
    _eventStreamController.close();
  }
}