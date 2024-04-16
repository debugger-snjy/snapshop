import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key, required this.controller, required this.radius, required this.text});


  final TextEditingController controller;
  final double radius;
  final String text;

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();

}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool passwordVisible=false;
  @override
  void initState() {

    super.initState();
    passwordVisible=true;
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      child: TextField(
        obscureText: passwordVisible,
        controller: widget.controller,

        decoration: InputDecoration(

          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(widget.radius)
          ),
          hintText: widget.text,
          suffixIcon: IconButton(
            icon: Icon(passwordVisible
                ? Icons.visibility
                : Icons.visibility_off),
            onPressed: () {
              setState(
                    () {
                  passwordVisible = !passwordVisible;
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
