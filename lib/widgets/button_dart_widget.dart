import 'package:flutter/material.dart';

class DarkButton extends StatelessWidget {
  final double radius;
  final Text text;
  final double buttonWidth, buttonHeight;
  final VoidCallback actions;

  const DarkButton(
      {super.key,
      required this.radius,
      required this.text,
      required this.actions,
      required this.buttonHeight,
      required this.buttonWidth});

  @override
  Widget build(BuildContext context) {
    // Wrapped with the SizeBox to Add the Height and width of the Button
    return Container(
      width: buttonWidth,
      height: buttonHeight,
      child: TextButton(
        onPressed: actions,
        style: TextButton.styleFrom(
            backgroundColor: Colors.black,
            elevation: 10,
            textStyle: const TextStyle(color: Colors.white),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(radius))),
        child: text,
      ),
    );
  }
}
