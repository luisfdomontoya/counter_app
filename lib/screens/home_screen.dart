import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const $fontsize20 = TextStyle(fontSize: 20);
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('HomeScreen'),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Numbers of clicks',
              style: $fontsize20,
            ),
            Text(
              '0',
              style: $fontsize20,
            ),
          ],
        ),
      ),
    );
  }
}
