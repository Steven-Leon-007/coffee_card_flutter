import 'package:coffee_card/model/coffee_model.dart';
import 'package:coffee_card/shared/styled_body_text.dart';
import 'package:flutter/material.dart';

class CoffeeTypeDisplay extends StatefulWidget {
  final CoffeeModel coffeeType;
  final bool isSelected;
  final VoidCallback onSelect;

  const CoffeeTypeDisplay(
      {super.key,
      required this.coffeeType,
      required Function() this.onSelect,
      required this.isSelected});

  @override
  State<CoffeeTypeDisplay> createState() => _CoffeeTypeDisplayState();
}

class _CoffeeTypeDisplayState extends State<CoffeeTypeDisplay> {
  @override
  Widget build(BuildContext context) {
    final coffeeType = widget.coffeeType;
    final Color? bgPicked = widget.isSelected ? Colors.brown[400] : Colors.brown[300];

    return GestureDetector(
      onTap: widget.onSelect,
      child: Container(
        padding: const EdgeInsets.all(10),
        color: bgPicked,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            StyledBodyText(coffeeType.coffeeType, FontWeight.bold),
            const SizedBox(
              height: 10,
            ),
            Image.asset(
              coffeeType.imageURI,
              fit: BoxFit.cover,
              width: 60,
            ),
            const SizedBox(
              height: 10,
            ),
            StyledBodyText("${coffeeType.avgPrice} \$USD", FontWeight.bold),
          ],
        ),
      ),
    );
  }
}
