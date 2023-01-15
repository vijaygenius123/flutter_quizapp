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
          alignment: Alignment.topLeft,
          padding: EdgeInsets.all(64),
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.amber.shade100, Colors.amber.shade400]),
          ),
          child: Material(
              color: Colors.red,
              child: InkWell(
                onTap: () => print('Tapped'),
                child: Container(
                  width: 100,
                  height: 100,
                  alignment: Alignment.center,
                ),
              ))),
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
