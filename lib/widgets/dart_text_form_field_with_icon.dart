import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DarkTextFormFieldWithIcon extends StatelessWidget {
  const DarkTextFormFieldWithIcon({super.key, required this.text, required this.image_path});
  final String text;
  final String image_path;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: Colors.white),

      decoration: InputDecoration(
        filled: true,
          fillColor: Colors.black,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0)),
          hintText: text,
          hintStyle: const TextStyle(color: Colors.white),
        suffixIcon: SvgPicture.asset(image_path)
      ),

    );
  }
}
