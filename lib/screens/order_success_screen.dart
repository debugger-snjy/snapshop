import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snapshop/utils/app_routes.dart';
import 'package:snapshop/utils/strings.dart';
import 'package:snapshop/widgets/button_dart_widget.dart';

class OrderSuccessScreen extends StatefulWidget {
  const OrderSuccessScreen({super.key});

  @override
  State<OrderSuccessScreen> createState() => _OrderSuccessScreenState();
}

class _OrderSuccessScreenState extends State<OrderSuccessScreen> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset('lib/assets/icons/success_icon.svg'),
                  const Text(
                    StringResources.orderSuccess,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                  const Text(
                    StringResources.orderSuccessMessage,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              DarkButton(
                  radius: 20,
                  text: const Text(StringResources.continueMessage),
                  actions: () {
                    Navigator.pushNamedAndRemoveUntil(context, AppRoutes.homePage, (route) => false);
                  },
                  buttonHeight: MediaQuery.of(context).size.height * 0.065,
                  buttonWidth: MediaQuery.of(context).size.width * 0.8)
            ],
          ),
        ),
      ),
    );
  }
}
