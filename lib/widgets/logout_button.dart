import 'package:flutter/material.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextButton(
          onPressed: (){},
          style: TextButton.styleFrom(
            elevation: 10,

          ),
          child: const Text('Log Out',
          style:  TextStyle(color:Colors.redAccent ),
            ),

      ),
    );
  }
}
