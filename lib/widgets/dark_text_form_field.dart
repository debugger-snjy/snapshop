import 'package:flutter/material.dart';

class DarkTextFormField extends StatelessWidget {
  const DarkTextFormField({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),

      decoration: InputDecoration(
        fillColor: Colors.black,
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0)),
        hintText: text
      ),

    );
  }
}
