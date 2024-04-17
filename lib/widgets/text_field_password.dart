import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key, required this.controller, required this.radius, required this.text, this.validator, this.onchange});


  final TextEditingController controller;
  final double radius;
  final String text;
  final String? Function(String?)? validator;
  final String? Function(String?)? onchange;
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
    return SizedBox(
      width: 350,
      child: TextFormField(
        obscureText: passwordVisible,
        controller: widget.controller,
        validator: widget.validator ,
        onChanged: widget.onchange,
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
