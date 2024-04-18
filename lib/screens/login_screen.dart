// Create by Aditya Lad
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snapshop/constants/texts.dart';
import 'package:snapshop/utils/app_routes.dart';
import 'package:snapshop/validators/form_field_validators.dart';
import 'package:snapshop/widgets/button_dart_widget.dart';
import 'package:snapshop/widgets/divider_with_text.dart';
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
  final validators=Validators();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: Center(
           child: Form(
             key: _formKey,
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

                    CustomTextField(
                        controller: emailTextEditingController,
                        radius: 10,
                        text:Texts.email,
                       validator: (value){   return value!.isNotEmpty && !validators.emailValidator(value)
                           ? 'Enter a valid email address'
                           : null;} ,
                    ),
                    CustomPasswordField(
                        controller: passwordTextEditingController, radius: 10, text: Texts.password),
                    DarkButton(
                      radius: 10, text: const Text(Texts.signMessage),
                      actions: (){
                        if (_formKey.currentState!.validate()) {
                          if(emailTextEditingController.text=="admin@gmail.com" && passwordTextEditingController.text=="admin"){
                            Navigator.popAndPushNamed(context, AppRoutes.homePage);
                          }else{
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Invalid Credentials.'),
                              ),
                            );
                          }
                        } else {
                        // Form is not valid, display validation errors
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Please correct the errors before continuing.'),
                          ),
                        );
                      }},
                      buttonHeight: MediaQuery.of(context).size.height*0.065,
                      buttonWidth: MediaQuery.of(context).size.width*0.8,),
                    const DividerWithText(text: "Or"),
                    Button(radius: 30,text: const Text(Texts.signInFacebook,
                      style: TextStyle(color: Colors.black),),actions: (){},
                      image: SvgPicture.asset("lib/assets/icons/facebook_icon.svg"),
                      buttonHeight: MediaQuery.of(context).size.height*0.065,
                      buttonWidth: MediaQuery.of(context).size.width*0.7,),
                    Button(radius: 30, text: const Text(Texts.signInGoogle,
                        style: TextStyle(color: Colors.black)), actions: (){},
                      image: SvgPicture.asset('lib/assets/icons/google_icon.svg'),
                      buttonHeight: MediaQuery.of(context).size.height*0.065,
             buttonWidth: MediaQuery.of(context).size.width*0.7,),
                    InkWell(
                      onTap:

                          ()=> Navigator.popAndPushNamed(context, AppRoutes.registerPage),

                      child: const Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(Texts.doNotHaveAccountMessage),
                          Text(Texts.signUpMessage,style: TextStyle(fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),


               ],
             ),
           ),
         ),
    );
  }
}
