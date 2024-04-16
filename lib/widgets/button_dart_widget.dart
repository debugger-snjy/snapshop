import 'package:flutter/material.dart';

class DarkButton extends StatelessWidget {
  final double radius;
  final Text text;
  final VoidCallback actions;
  const DarkButton({super.key, required this.radius, required this.text,required this.actions});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: actions,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.black,
          textStyle: const TextStyle(color: Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius)
          )

        ),
        child: text,
    );
  }
}
