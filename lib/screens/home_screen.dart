import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const $fontsize20 = TextStyle(fontSize: 20);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('HomeScreen'),
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
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
