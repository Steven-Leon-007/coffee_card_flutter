import 'package:coffee_card/coffee_type_display.dart';
import 'package:coffee_card/model/coffee_model.dart';
import 'package:flutter/material.dart';

class CoffeeTypes extends StatefulWidget {
  const CoffeeTypes({super.key});

  @override
  State<CoffeeTypes> createState() => _CoffeeTypesState();
}

class _CoffeeTypesState extends State<CoffeeTypes> {
  Color? bgPicked = Colors.brown[300];
  CoffeeModel? _selectedCoffeeType;

  List<CoffeeModel> coffeeTypes = [
    CoffeeModel("Macchiato", "assets/img/macchiato.png", 2.50),
    CoffeeModel("Cappuccino", "assets/img/cappuccino.png", 3.50),
    CoffeeModel("Americano", "assets/img/americano.png", 2.00),
  ];

  void _selectCoffeeType(CoffeeModel coffeeType) {
    setState(() {
      _selectedCoffeeType = coffeeType;
    });

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.brown[300],
      padding: const EdgeInsets.only(top: 20, bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: coffeeTypes.map((coffeeType) {
          return CoffeeTypeDisplay(
            coffeeType: coffeeType,
            isSelected: coffeeType == _selectedCoffeeType,
            onSelect: () => _selectCoffeeType(coffeeType),
          );
        }).toList(),
      ),
    );
  }
}
