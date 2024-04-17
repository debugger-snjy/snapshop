import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:snapshop/utils/strings.dart';
import 'package:snapshop/widgets/button_dart_widget.dart';


class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const Text('Verify Phone Number',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),
            ),
            const SizedBox(height: 10,),
            const Text(
              StringResources.createAccountMiscText,
            style: TextStyle(
              color: Colors.black26
            ),),
            const SizedBox(height: 40,),
            OtpTextField(
              numberOfFields: 4,
              showFieldAsBox: true,
              fieldWidth: 70,
              fieldHeight: 70,
              borderRadius:BorderRadius.circular(10),
            ),
            const SizedBox(height: 20,),
            const Center(child:
            Text('Resend Code in .. s',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25
            ),)),
            const SizedBox(height: 90,),

            DarkButton(
                radius: 20,
                text: const Text('Verify'),
                actions: (){},
              buttonHeight: MediaQuery.of(context).size.height*0.065,
              buttonWidth: MediaQuery.of(context).size.width*0.85,)
          ],
        ),
      )

    );
  }
}
