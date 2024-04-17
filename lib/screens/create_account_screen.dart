import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:snapshop/utils/app_routes.dart';
import 'package:snapshop/utils/strings.dart';
import 'package:snapshop/widgets/divider_with_text.dart';

import '../constants/texts.dart';
import '../widgets/button_dart_widget.dart';
import '../widgets/button_with_image.dart';
import '../widgets/text_field_custom.dart';
import '../widgets/text_field_password.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  final usernameEditingController=TextEditingController();
  final emailTextEditingController=TextEditingController();
  final passwordTextEditingController=TextEditingController();
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
          
                  Text(StringResources.createAccountMessage, style: TextStyle(fontSize: 35),),
                  Text(StringResources.createAccountMiscText,style: TextStyle(fontSize: 15,color: Colors.black26),),
                ],
              ),
              //Username
              CustomTextField(controller: usernameEditingController, 
                  radius: 10, 
                  text: StringResources.usernameFieldText,
                  validator: (value){
                    if (value!.isEmpty) {
                      return 'Username is required';
                    }
                    // Example: Minimum length of 4 characters
                    if (value.length < 4) {
                      return 'Username must be at least 4 characters long';
                    }
                    // Example: Only allow alphanumeric characters and underscores
                    if (!RegExp(r'^[a-zA-Z0-9_]+$').hasMatch(value)) {
                      return 'Username can only contain letters, numbers, and underscores';
                    }

                    // If all validation rules pass, return null
                    return null;
                  }
              ),
              //Email
              CustomTextField(
                  controller: emailTextEditingController, 
                  radius: 10, 
                  text:Texts.email,
                  validator: (value){
                    const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
                        r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
                        r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
                        r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
                        r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
                        r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
                        r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
                    final regex = RegExp(pattern);

                    return value!.isNotEmpty && !regex.hasMatch(value)
                        ? 'Enter a valid email address'
                        : null;
                  },
              ),
              //Password
              CustomPasswordField(
                  controller: passwordTextEditingController, 
                  radius: 10, 
                  text: Texts.password,
                  validator: (value){
                    if (value == null || value.isEmpty) {
                      return 'Password is required';
                    }

                    return null;
                  },
              ),
              Row(
                children: [
                  Checkbox(
                    onChanged: (bool? value) {
                      if (value != null) {
                        value = !value;
                      }
                    },
                    value: false,
                  ),
                  const Text(StringResources.accepted),
                  const Text(StringResources.termsAndPolicy,style: TextStyle(fontWeight: FontWeight.bold),)
                ],
              ),
              DividerWithText(text: "Or Sign in with"),
          
          
          
              Button(radius: 30,text: const Text(Texts.signInFacebook,style: TextStyle(color: Colors.black),),actions: (){},
                image: SvgPicture.asset("lib/assets/icons/facebook_icon.svg"),  buttonHeight: MediaQuery.of(context).size.height*0.065,
                buttonWidth: MediaQuery.of(context).size.width*0.7,),
              Button(radius: 30, text: const Text(Texts.signInGoogle,style: TextStyle(color: Colors.black)), actions: (){},
                image: SvgPicture.asset('lib/assets/icons/google_icon.svg'), buttonHeight: MediaQuery.of(context).size.height*0.065,
                buttonWidth: MediaQuery.of(context).size.width*0.7,),
              Button(radius: 30, text: const Text(Texts.signInGoogle,style: TextStyle(color: Colors.black)), actions: (){},
                image: SvgPicture.asset('lib/assets/icons/apple_icon.svg'), buttonHeight: MediaQuery.of(context).size.height*0.065,
                buttonWidth: MediaQuery.of(context).size.width*0.7,),
              DarkButton(
                radius: 10, text: const Text(Texts.signUpMessage),
                actions: (){
                  if (_formKey.currentState!.validate()) {
                    // Form is valid, proceed with your actions here
                  } else {
                    // Form is not valid, display validation errors
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please correct the errors before continuing.'),
                      ),
                    );
                  }

                },
                buttonHeight: MediaQuery.of(context).size.height*0.065,
                buttonWidth: MediaQuery.of(context).size.width*0.8,),
              InkWell(
                onTap: ()=> Navigator.popAndPushNamed(context, AppRoutes.loginPage),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(StringResources.alreadyAccount),
                    Text(Texts.signMessage)
                  ],
                ),
              )
          
          
            ],
          ),
        ),
      ),
    );
  }
}
