import 'package:flutter/material.dart';
import 'package:snapshop/utils/strings.dart';
import 'package:snapshop/widgets/button_dart_widget.dart';
import 'package:snapshop/widgets/custom_app_bar.dart';
import 'package:snapshop/widgets/text_field_custom.dart';
import 'package:snapshop/widgets/text_field_password.dart';

import '../constants/texts.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final usernameTextController = TextEditingController();
  final mobileTextController = TextEditingController();
  final emailTextController = TextEditingController();
  final passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(
        centreTitle: true,
        title: "Password",
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CustomTextField(
                    controller: usernameTextController,
                    radius: 10,
                    text: "Current Password"),
                const SizedBox(
                  height: 25,
                ),
                CustomTextField(
                    controller: mobileTextController,
                    radius: 10,
                    text: "New Password"),
                const SizedBox(
                  height: 25,
                ),
                CustomTextField(
                    controller: emailTextController,
                    radius: 10,
                    text: "Confirm Password"),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
            Positioned(
              child: Center(
                child: DarkButton(
                    radius: 10,
                    text: Text('Save'),
                    actions: () {},
                    buttonHeight: MediaQuery.of(context).size.height * 0.065,
                    buttonWidth: MediaQuery.of(context).size.width * 0.9),
              ),
              bottom: 10,
            )
          ],
        ),
      ),
    );
  }
}
