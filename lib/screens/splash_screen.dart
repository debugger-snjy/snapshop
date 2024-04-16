// ----------------------------
// Created By : Sanjay Sukhwani
// -----------------------------
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:snapshop/utils/app_routes.dart';
import 'package:snapshop/utils/strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    // Setting the Timer to navigate to the onboarding screen after 1 second
    Timer(const Duration(seconds: 5), () {
      Navigator.pushNamedAndRemoveUntil(context, AppRoutes.onboardingScreen, (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.black),
              child: Image.asset(StringResources.appIconPath, height: 32),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(StringResources.appname,
                style: TextStyle(
                    fontFamily: "Champ",
                    fontWeight: FontWeight.w800,
                    fontSize: 20,
                    letterSpacing: 0.68,
                    color: Colors.black))
          ],
        ),
      ),
    );
  }
}
