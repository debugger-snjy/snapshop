import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snapshop/widgets/custom_app_bar.dart';

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
           title: 'Add Card',
           centreTitle: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 const Text('Add New Card'),
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
                onCreditCardWidgetChange: (CreditCardBrand brand){}),
            const Text('Enter your information'),

          ],
        ),
      ),
    );
  }
}
