// ----------------------------
// Created By : Sanjay Sukhwani
// -----------------------------
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snapshop/provider/navigation_provider.dart';
import 'package:snapshop/provider/slider_provider.dart';
import 'package:snapshop/screens/home_screen.dart';
import 'package:snapshop/screens/login_screen.dart';
import 'package:snapshop/screens/onboarding_screen.dart';
import 'package:snapshop/screens/splash_screen.dart';
import 'package:snapshop/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SliderController()),
        ChangeNotifierProvider(create: (context) => NavigatorProvider())
      ],
      child: MaterialApp(
        routes: {
          AppRoutes.defaultPage: (context) => const SplashScreen(),
          AppRoutes.onboardingScreen: (context) => const OnBoardingScreen(),
          AppRoutes.loginPage: (context) => const LoginScreen(),
          AppRoutes.homePage: (context) => const HomePage()
        },
      ),
    );
  }
}
