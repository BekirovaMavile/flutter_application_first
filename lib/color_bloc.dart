import 'dart:async';

import 'package:flutter/material.dart';

class ColorBloc{
  ColorBloc(){
    _eventStreamController.stream.listen(_mapEventToState);
  }
  final _colorStreamController = StreamController<Color>();
  final _eventStreamController = StreamController<String>();
  var color = Colors.red;

  Stream<Color> get colorForListen =>_colorStreamController.stream;
  StreamSink<String> get sinkForSendEvent => _eventStreamController.sink;

  void _mapEventToState(String event){
    if(event == 'red') {
      _colorStreamController.sink.add(Colors.red);
    }
    if(event == 'green'){
      _colorStreamController.sink.add(Colors.green);
    }
  }
}