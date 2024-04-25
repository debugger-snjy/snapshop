import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snapshop/widgets/button_dart_widget.dart';
import 'package:snapshop/widgets/custom_app_bar.dart';
import 'package:snapshop/widgets/dark_text_form_field.dart';
import 'package:snapshop/widgets/dart_text_form_field_with_icon.dart';

class AddMoreCards extends StatefulWidget {
  const AddMoreCards({super.key});

  @override
  State<AddMoreCards> createState() => _AddMoreCardsState();
}

class _AddMoreCardsState extends State<AddMoreCards> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: const CustomAppBar(
           title: 'Add New Card',
           centreTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 const Text('Add New Card',style: TextStyle(fontSize: 20,
                     fontWeight: FontWeight.bold,
                    color: Colors.black87
                 ),),
                 SvgPicture.asset("lib/assets/icons/scan_icon.svg"),

               ],
              ),
            ),
            CreditCardWidget(
                cardNumber: '2423 2425 5523 2525',
                expiryDate: '16/04/2024',
                cardHolderName: 'Mukesh Ambani',
                cvvCode: 'xxxxxx',
                showBackView: false,
                cardBgColor: Colors.black,
                onCreditCardWidgetChange: (CreditCardBrand brand){}),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(

                children: [
                  const Text('Enter your information'),

                  const DarkTextFormFieldWithIcon(
                      text: 'Card Number',
                      image_path: 'lib/assets/PaymentCardDesign/master_card_symbol.svg'),
                  const SizedBox(height: 20,),
                  const DarkTextFormField(text: 'Card Holder'),
                  const SizedBox(height: 20,),
                  SizedBox(
                    height: 100,
                    child: ListView(

                      scrollDirection: Axis.horizontal,
                      children: const [
                      SizedBox(width:120,child: DarkTextFormField(text: 'Exp Date')),
                        SizedBox(width: 20,),
                        SizedBox(width:120,child: DarkTextFormField(text: 'CVV'))
                    ],),
                  ),
                  DarkButton(radius: 20, text: const Text('Save'), actions:(){},
                      buttonHeight: 60,
                      buttonWidth: MediaQuery.of(context).size.width * 0.9),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
