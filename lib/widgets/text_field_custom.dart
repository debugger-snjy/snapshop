import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller, required this.radius, required this.text});
  final TextEditingController controller;
  final double radius;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: TextField(

        controller: controller,
        decoration:

        InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius)
          ),
          hintText: text,

        ),
      ),
    );
  }
}
