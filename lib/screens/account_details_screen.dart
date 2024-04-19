import 'package:flutter/material.dart';
import 'package:snapshop/utils/strings.dart';
import 'package:snapshop/widgets/button_dart_widget.dart';
import 'package:snapshop/widgets/custom_app_bar.dart';
import 'package:snapshop/widgets/text_field_custom.dart';
import 'package:snapshop/widgets/text_field_password.dart';

import '../constants/texts.dart';

class AccountDetailsScreen extends StatefulWidget {
  const AccountDetailsScreen({super.key});

  @override
  State<AccountDetailsScreen> createState() => _AccountDetailsScreenState();
}

class _AccountDetailsScreenState extends State<AccountDetailsScreen> {
  final usernameTextController=TextEditingController();
  final mobileTextController=TextEditingController();
  final emailTextController=TextEditingController();
  final passwordTextController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        centreTitle: true,
        title: StringResources.accountDetails,
      ) ,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,

            children: [
              CustomTextField(
                  controller: usernameTextController,
                  radius: 10,
                  text: StringResources.usernameFieldText
              ),
              const SizedBox(height: 25,),
              CustomTextField(
                 controller: mobileTextController,
                 radius: 10,
                 text: StringResources.phoneNumber),
              const SizedBox(height: 25,),
              CustomTextField(
                  controller: emailTextController,
                  radius: 10,
                  text: Texts.email),
              const SizedBox(height: 25,),
              CustomPasswordField(
                  controller: passwordTextController,
                  radius: 10,
                  text: Texts.password),
              const SizedBox(height: 50,),
              DarkButton(
                  radius: 10,
                  text: Text('Edit'),
                  actions: (){},
                  buttonHeight: MediaQuery.of(context).size.height*0.065,
                  buttonWidth: MediaQuery.of(context).size.width*0.8)
            ],
        ),
      ),
    );
  }
}
