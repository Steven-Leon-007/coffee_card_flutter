import 'package:coffee_card/coffee_prefs.dart';
import 'package:coffee_card/coffee_types.dart';
import 'package:coffee_card/shared/styled_body_text.dart';
import 'package:flutter/material.dart';

// Normally each screen have a different scaffold, but just one MaterialApp
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Coffee App",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blueGrey[500],
        centerTitle: true,
        foregroundColor: const Color.fromARGB(252, 234, 234, 234),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.brown[200],
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            child: const StyledBodyText(
                "How I like my coffee...", FontWeight.bold),
          ),
          Container(
            color: Colors.brown[100],
            padding: const EdgeInsets.all(20),
            child: const CoffeePrefs(),
          ),
          Container(
            color: Colors.brown[300],
            alignment: Alignment.center,
            padding: const EdgeInsets.only(top: 20),
            child: const StyledBodyText("Our best Sellers: ", FontWeight.bold)),
          const CoffeeTypes(),
        ],
      ),
      backgroundColor: Colors.brown[400],
    );
  }
}
