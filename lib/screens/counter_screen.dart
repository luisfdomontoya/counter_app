import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;

  void increase() {
    setState(() => counter++);
  }

  void decrease() {
    setState(() => counter--);
  }

  void reset() {
    setState(() => counter = 0);
  }

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
      floatingActionButton: CustomFloatingActions(
        increaseFn: increase,
        decreaseFn: decrease,
        resetFn: reset,
      ),
    );
  }
}

class CustomFloatingActions extends StatelessWidget {
  final Function increaseFn;
  final Function decreaseFn;
  final Function resetFn;

  const CustomFloatingActions({
    Key? key,
    required this.increaseFn,
    required this.decreaseFn,
    required this.resetFn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FloatingActionButton(
          onPressed: () => increaseFn(),
          child: const Icon(Icons.exposure_plus_1),
        ),
        FloatingActionButton(
          onPressed: () => resetFn(),
          child: const Icon(Icons.exposure_outlined),
        ),
        FloatingActionButton(
          onPressed: () => decreaseFn(),
          child: const Icon(Icons.exposure_minus_1),
        ),
      ],
    );
  }
}
