// Create by Aditya Lad
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snapshop/constants/texts.dart';
import 'package:snapshop/widgets/button_dart_widget.dart';
import 'package:snapshop/widgets/text_field_custom.dart';
import 'package:snapshop/widgets/text_field_password.dart';

import '../widgets/button_with_image.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailTextEditingController=TextEditingController();
  final passwordTextEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Expanded(

              child: Center(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [

                       const Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(Texts.welcomeMessage, style: TextStyle(fontSize: 45),),
                           Text(Texts.signMessage,style: TextStyle(fontSize: 45),),
                         ],
                       ),

                       CustomTextField(controller: emailTextEditingController, radius: 10, text:Texts.email ),
                       CustomPasswordField(controller: passwordTextEditingController, radius: 10, text: Texts.password),
                       DarkButton(radius: 10, text: const Text(Texts.signMessage), actions: (){},
                         buttonHeight: MediaQuery.of(context).size.height*0.065,
                         buttonWidth: MediaQuery.of(context).size.width*0.8,),
                       Button(radius: 15,text: const Text(Texts.signInFacebook,style: TextStyle(color: Colors.black),),actions: (){}, image: SvgPicture.asset("lib/assets/icons/facebook_icon.svg"),  buttonHeight: MediaQuery.of(context).size.height*0.065,
                         buttonWidth: MediaQuery.of(context).size.width*0.7,),
                       Button(radius: 15, text: const Text(Texts.signInGoogle,style: TextStyle(color: Colors.black)), actions: (){}, image: SvgPicture.asset('lib/assets/icons/google_icon.svg'), buttonHeight: MediaQuery.of(context).size.height*0.065,
                buttonWidth: MediaQuery.of(context).size.width*0.7,),
                       const Row(

                         mainAxisAlignment: MainAxisAlignment.center,
                         children: [
                           Text(Texts.doNotHaveAccountMessage),
                           Text(Texts.signUpMessage)
                         ],
                       ),


                  ],
                ),
              ),
         ),
    );
  }
}
