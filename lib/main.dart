import 'package:coffee_card/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "First App Flutter",
      home: Home(),
    ),
  );
}

class SandBox extends StatelessWidget {
  const SandBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Sandbox"),
          backgroundColor: Colors.blueGrey[200],
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 100,
              color: Colors.red[200],
              child: const Text("One"),
            ),
            Container(
              height: 100,
              color: Colors.blue[200],
              child: const Text("Two"),
            ),
            Container(
              height: 300,
              color: Colors.green[200],
              child: const Text("Three"),
            ),
          ],
        ));
  }
}
