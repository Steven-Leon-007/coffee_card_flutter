import 'package:coffee_card/model/coffee_model.dart';
import 'package:coffee_card/shared/styled_body_text.dart';
import 'package:flutter/material.dart';

class CoffeeTypeDisplay extends StatefulWidget {
  final CoffeeModel coffeeType;
  const CoffeeTypeDisplay({super.key, required this.coffeeType});

  @override
  State<CoffeeTypeDisplay> createState() => _CoffeeTypeDisplayState();
}

class _CoffeeTypeDisplayState extends State<CoffeeTypeDisplay> {
  Color? _bgPicked = Colors.brown[300];
  bool _isSelected = false;

  void selectCoffeeType() {
    setState(() {
      _isSelected = !_isSelected;
      _bgPicked = _isSelected ? Colors.brown[400] : Colors.brown[300];
    });
  }

  @override
  Widget build(BuildContext context) {
    final coffeeType = widget.coffeeType;

    return GestureDetector(
      onTap: selectCoffeeType,
      child: Container(
        padding: const EdgeInsets.all(10),
        color: _bgPicked,
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
