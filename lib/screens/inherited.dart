import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.name, required this.age});
  final String name;
  final String age;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inherited Widget'),
      ),
      body: MyInheritedWidget(
        name, 
        age,
        child: const FirstChild(),
      )
    );
  }
}
class FirstChild extends StatelessWidget {
  const FirstChild({super.key});

  @override
  Widget build(BuildContext context) {
    return const SecondChild();
  }
}
class SecondChild extends StatelessWidget {
  const SecondChild({super.key});

  @override
  Widget build(BuildContext context) {
    return const ThirdChild();
  }
}
class ThirdChild extends StatelessWidget {
  const ThirdChild({super.key});

  @override
  Widget build(BuildContext context) {
    final hunter = context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>() as MyInheritedWidget;
    return Center(
      child: Text('${hunter.name} ${hunter.age}'),
    );
  }
}

class MyInheritedWidget extends InheritedWidget{
  const MyInheritedWidget(this.name, this.age, {super.key, required super.child});
  final String name;
  final String age;

  @override
  bool updateShouldNotify(covariant MyInheritedWidget oldWidget) => name != oldWidget.name || age != oldWidget.age;
}