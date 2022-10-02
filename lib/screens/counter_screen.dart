import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    const fontsize20 = TextStyle(fontSize: 20);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('CounterScreen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Numbers of clicks',
              style: fontsize20,
            ),
            Text(
              '$counter',
              style: fontsize20,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          setState(() => counter++);
        },
      ),
    );
  }
}
