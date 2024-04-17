import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.controller,
    required this.radius, required this.text, this.validator});
  final TextEditingController controller;
  final double radius;
  final String? Function(String?)? validator;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: TextFormField(
        validator: validator ,
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
