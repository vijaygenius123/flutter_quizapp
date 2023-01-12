import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      child: MyFirstWidget(
        key: const Key('MyFirstWidget'),
        color: Colors.blue.shade400,
      ),
    );
  }
}

class MyFirstWidget extends StatelessWidget {
  final Color color;

  MyFirstWidget({required Key key, this.color = Colors.red}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: (Container(
        width: 50,
        height: 50,
        color: color,
      )),
    );
  }
}

class HelloWorld extends StatelessWidget {
  const HelloWorld({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Center(
        child: Container(
          child: Text('Hello World!'),
        ),
      ),
    ));
  }
}
