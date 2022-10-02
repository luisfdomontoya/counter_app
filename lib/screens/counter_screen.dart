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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: const CustomFloatingActions(),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  const CustomFloatingActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.exposure_plus_1),
        ),
        FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.exposure_outlined),
        ),
        FloatingActionButton(
          onPressed: null,
          child: Icon(Icons.exposure_minus_1),
        ),
      ],
    );
  }
}
