// ----------------------------
// Created By : Sanjay Sukhwani
// -----------------------------
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snapshop/provider/categorytab_provider.dart';
import 'package:snapshop/provider/sizetab_provider.dart';
import 'package:snapshop/provider/slider_provider.dart';
import 'package:snapshop/screens/account_details_screen.dart';
import 'package:snapshop/screens/add_new_card_screen.dart';
import 'package:snapshop/screens/cart_screen.dart';
import 'package:snapshop/screens/category_screen.dart';
import 'package:snapshop/screens/create_account_screen.dart';
import 'package:snapshop/screens/create_new_password.dart';
import 'package:snapshop/screens/forgot_password_screen.dart';
import 'package:snapshop/screens/home_screen.dart';
import 'package:snapshop/screens/login_screen.dart';
import 'package:snapshop/screens/my_account_screen.dart';
import 'package:snapshop/screens/onboarding_screen.dart';
import 'package:snapshop/screens/payment_method_screen.dart';
import 'package:snapshop/screens/product_details_screen.dart';
import 'package:snapshop/screens/registration_success_screen.dart';
import 'package:snapshop/screens/splash_screen.dart';
import 'package:snapshop/screens/verify_otp_screen.dart';
import 'package:snapshop/screens/wishlist_screen.dart';
import 'package:snapshop/utils/app_routes.dart';
import 'package:snapshop/widgets/add_more_credit_card_widget.dart';

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
        ChangeNotifierProvider(create: (context) => CategoryTabNavigator()),
        ChangeNotifierProvider(create: (context) => SizeTabNavigator())
      ],
      child: MaterialApp(
        routes: {
          AppRoutes.defaultPage: (context) => const SplashScreen(),
          AppRoutes.onboardingScreen: (context) => const OnBoardingScreen(),
          AppRoutes.loginPage: (context) => const LoginScreen(),
          AppRoutes.homePage: (context) => const HomePage(),
          AppRoutes.categoryPage: (context) => const CategoryPage(),
          AppRoutes.productDetailsPage: (context) => const ProductPage(),
          AppRoutes.wishlistPage: (context) => const WishlistScreen(),
          AppRoutes.accountPage: (context) => const MyAccount(),
          AppRoutes.registerPage: (context) => const CreateAccount(),
          AppRoutes.forgetPassword: (context) => const ForgotPasswordScreen(),
          AppRoutes.verifyOTPPage: (context) => const VerifyOtpScreen(),
          AppRoutes.successRegister: (context) => const SuccessScreen(),
          AppRoutes.accountDetails:(context)=>const AccountDetailsScreen(),
          AppRoutes.paymentMode:(context)=>const PaymentMethodScreen(),
          AppRoutes.addCards:(context)=>const AddMoreCards(),
          AppRoutes.cartPage:(context)=>const CartPage(),
          AppRoutes.newPasswordPage: (context) =>
              const NewPasswordCreateScreen(),
        },
      ),
    );
  }
}
