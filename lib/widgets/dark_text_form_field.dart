import 'package:flutter/material.dart';

class DarkTextFormField extends StatelessWidget {
  const DarkTextFormField({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white), // Text color
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.black, // Background color
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        hintText: text,
        hintStyle: const TextStyle(color: Colors.white), // Hint text color
      ),
    );
  }
}
