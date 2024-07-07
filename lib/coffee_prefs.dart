import 'package:coffee_card/shared/styled_body_text.dart';
import 'package:coffee_card/shared/styled_body_button.dart';
import 'package:flutter/material.dart';

class CoffeePrefs extends StatefulWidget {
  // Stateless widgets must not contain dynamic data, so let's convert this widget in stateful
  const CoffeePrefs({super.key});

  // This creates a state object and associates it with the widget
  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugars = 1;

  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void increaseSugar() {
    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  void decreaseStrength() {
    setState(() {
      strength = strength > 0 ? strength - 1 : 5;
    });
  }

  void decreaseSugar() {
    setState(() {
      sugars = sugars > 0 ? sugars - 1 : 5;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const StyledBodyText("Strength: ", FontWeight.normal),
            for (int i = 0; i < strength; i++)
              // The comma at the end of the element marks the end of the loop
              Image.asset(
                "assets/img/coffee_beans.png",
                width: 25,
              ),
            const Expanded(
              child: SizedBox(),
            ),
            StyledBodyButton(
              text: "+",
              onPressed: increaseStrength,
            ),
            StyledBodyButton(
              text: "-",
              onPressed: decreaseStrength,
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            const StyledBodyText("Sugars: ", FontWeight.normal),
            if (sugars == 0)
              const StyledBodyText("No sugars ", FontWeight.bold)
            else
              for (int i = 0; i < sugars; i++)
                Image.asset(
                  "assets/img/sugar_cubes.png",
                  width: 25,
                ),
            const Expanded(
              child: SizedBox(
                height: 50,
              ),
            ),
            StyledBodyButton(
              text: "+",
              onPressed: increaseSugar,
            ),
            StyledBodyButton(
              text: "-",
              onPressed: decreaseSugar,
            ),
          ],
        ),
      ],
    );
  }
}
