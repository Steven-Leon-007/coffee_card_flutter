import 'package:flutter/material.dart';

class StyledBodyButton extends StatelessWidget {
  const StyledBodyButton({
    super.key,
    required this.onPressed,
    required this.text,
  });

  final String text;
  final void Function() onPressed;


  @override
  Widget build(BuildContext context) {
    return FilledButton(
                onPressed: onPressed,
                style: FilledButton.styleFrom(
                    backgroundColor: Colors.brown[300],
                    shape: const CircleBorder(
                        side: BorderSide(color: Colors.brown),)),
                child: Text(text));
  }
}