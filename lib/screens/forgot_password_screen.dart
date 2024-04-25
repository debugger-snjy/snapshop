import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snapshop/utils/app_routes.dart';
import 'package:snapshop/widgets/button_dart_widget.dart';

import '../constants/texts.dart';
import '../utils/strings.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            const Text(
              StringResources.forgotPassword,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            SizedBox(
              height: 20,
            ),
            const Text(
              StringResources.forgotPasswordInstructions,
              textAlign: TextAlign.justify,
              style: TextStyle(color: Colors.black26),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 20.0, top: 15.0, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset('lib/assets/icons/email_icon.svg'),
                          SvgPicture.asset('lib/assets/icons/tick_icon.svg')
                        ],
                      ),
                    ),
                    const Text(
                      Texts.email,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const Text(StringResources.miscEmail)
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 150,
              decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.circular(20)),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 20.0, top: 15.0, bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SvgPicture.asset('lib/assets/icons/phone_icon.svg'),
                          SvgPicture.asset('lib/assets/icons/untick_icon.svg')
                        ],
                      ),
                    ),
                    const Text(
                      StringResources.phoneNumber,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    const Text(StringResources.miscPhone)
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 100, 0, 0),
              child: DarkButton(
                  radius: 20,
                  text: Text(
                    "Next",
                    style: TextStyle(color: Colors.white),
                  ),
                  actions: () {
                    Navigator.pushNamed(context, AppRoutes.newPasswordPage);
                  },
                  buttonHeight: 60,
                  buttonWidth: MediaQuery.of(context).size.width * 0.9),
            )
          ],
        ),
      ),
    );
  }
}
