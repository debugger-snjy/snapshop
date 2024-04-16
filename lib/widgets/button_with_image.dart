// Create by Aditya Lad
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Button extends StatelessWidget {
  final double radius,buttonHeight,buttonWidth;
  final Text text;
  final VoidCallback actions;
  const Button({super.key, required this.radius, required this.text,required this.actions, required this.image, required this.buttonHeight, required this.buttonWidth});
  final SvgPicture image;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: actions,
      style: ElevatedButton.styleFrom(

          textStyle: const TextStyle(color: Colors.white),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius)
          )

      ),
      child: Container(
        width: buttonWidth,
        height: buttonHeight,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            image,
            text
          ],
        ),
      ),
    );
  }
}
