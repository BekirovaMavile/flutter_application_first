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
      body: FirstChild(
        name: name, 
        age: age,
        
      )
    );
  }
}
class FirstChild extends StatelessWidget {
  const FirstChild({super.key, required this.name, required this.age});
  final String name;
  final String age;

  @override
  Widget build(BuildContext context) {
    return  SecondChild(
      name: name,
      age: age,
    );
  }
}
class SecondChild extends StatelessWidget {
  const SecondChild({super.key, required this.name, required this.age});
  final String name;
  final String age;

  @override
  Widget build(BuildContext context) {
    return  ThirdChild(
      name: name,
      age: age,
    );
  }
}
class ThirdChild extends StatelessWidget {
  const ThirdChild({super.key, required this.name, required this.age});
  final String name;
  final String age;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('${name} ${age}'),
    );
  }
}

