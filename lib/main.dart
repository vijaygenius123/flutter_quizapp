import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Quiz App'),
      ),
      body: Container(
          color: Colors.yellow.shade100,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Icon(
                  Icons.cake_sharp,
                  size: 50,
                  color: Colors.green.shade400,
                ),
                Icon(Icons.ac_unit, size: 50),
                Icon(Icons.access_alarm, size: 50),
                Icon(Icons.account_circle, size: 50),
                Icon(Icons.accessibility, size: 50),
              ])),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      drawer: Drawer(),
    ));
  }
}

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int count = 0;
  bool switchVal = false;
  final String buttonText = 'Click Me';
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(
            'Count: $count',
          ),
          ElevatedButton(
            child: Text(buttonText),
            onPressed: () {
              setState(() {
                count++;
              });
            },
          ),
          Switch(
              value: switchVal,
              onChanged: (value) => setState(() {
                    switchVal = value;
                  })),
          CupertinoSwitch(
              value: switchVal,
              onChanged: (value) => setState(() {
                    switchVal = value;
                  })),
        ],
      ),
    ));
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
