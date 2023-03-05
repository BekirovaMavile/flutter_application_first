import 'dart:async';

import 'package:flutter/material.dart';

enum CounterEvent { event_increment, event_decrement }

class CounterBloc {
 int _counter = 50;

  final _inputEventController = StreamController<CounterEvent>();
  StreamSink<CounterEvent> get inputEventSink => _inputEventController.sink;

  final _outputStateontroller = StreamController<int>();
  Stream<int> get outputStateStream => _outputStateontroller.stream;

  void _mapEventToState(CounterEvent event) {
    if (event == CounterEvent.event_increment)
      _counter++;
    else if (event == CounterEvent.event_decrement)
      _counter--;
    else
      throw Exception('Wrong Event Type');

    _outputStateontroller.sink.add(_counter);
  }

  CounterBloc() {
    _inputEventController.stream.listen(_mapEventToState);
  }

  void dispose() {
    _inputEventController.close();
    _outputStateontroller.close();
  }
}
