import 'package:flutter/material.dart';
import 'package:snapshop/utils/strings.dart';
import 'package:snapshop/widgets/text_field_password.dart';
import '../widgets/button_dart_widget.dart';

class NewPasswordCreateScreen extends StatefulWidget {
  const NewPasswordCreateScreen({super.key});

  @override
  State<NewPasswordCreateScreen> createState() => _NewPasswordCreateScreenState();
}

class _NewPasswordCreateScreenState extends State<NewPasswordCreateScreen> {
  final passwordTextController =TextEditingController();
  final confirmPasswordTextController=TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key:_formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const
                  Text(StringResources.newPassword,
                    style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                  SizedBox(height: 10,),
                  const
                  Text(StringResources.passwordChangeInstruction1,
                    style: TextStyle(color: Colors.black26),),
                  SizedBox(height: 20,),
                  CustomPasswordField(
                    controller: passwordTextController,
                    radius: 20,
                    text: StringResources.newPassword,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is required';
                      }
                      if (value.length < 6) {
                        return 'Password must be at least 6 characters long';
                      }
                      return null;
                    },

                  ),
                  SizedBox(height: 20,),
                  const Text(
                    StringResources.passwordChangeInstruction2,
                    style: TextStyle(color: Colors.black26),
                    textAlign: TextAlign.justify,),
                  SizedBox(height: 20,),
                  CustomPasswordField(
                    controller: confirmPasswordTextController,
                    radius: 20,
                    text: StringResources.confirmPassword,
                    validator: (value) {

                      if (value == null || value.isEmpty) {
                        return 'Password is required';
                      }
                      if (value != passwordTextController.text) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  )
                ],
              ),

              DarkButton(
                  radius: 20,
                  text: const Text(StringResources.continueMessage),
                  actions: () {

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
                  buttonWidth:MediaQuery.of(context).size.width*0.85)
            ],
          ),
        ),
      ),
    );
  }
}
