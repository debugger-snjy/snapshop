import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:snapshop/utils/app_routes.dart';
import 'package:snapshop/utils/strings.dart';
import 'package:snapshop/widgets/add_more_credit_card_widget.dart';
import 'package:snapshop/widgets/custom_app_bar.dart';

import '../widgets/credit_details_card.dart';

class PaymentMethodScreen extends StatefulWidget {
  const PaymentMethodScreen({super.key});

  @override
  State<PaymentMethodScreen> createState() => _PaymentMethodScreenState();
}

class _PaymentMethodScreenState extends State<PaymentMethodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: StringResources.paymentMethod,
        centreTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              const Text(
                'My Cards',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(
                height: 250,
                child: Stack(
                  children: [
                    PageView(
                      children: [
                        CreditCardWidget(
                            cardNumber: "5252 2626 2442 2626",
                            expiryDate: "17/08/2024",
                            cardHolderName: "xxxxxxx",
                            cvvCode: "xxxxx",
                            showBackView: false,
                            onCreditCardWidgetChange:
                                (CreditCardBrand brand) {}),
                        CreditCardWidget(
                            cardNumber: "5252 2626 2442 2626",
                            expiryDate: "17/08/2024",
                            cardHolderName: "xxxxxxx",
                            cvvCode: "xxxxx",
                            showBackView: false,
                            onCreditCardWidgetChange:
                                (CreditCardBrand brand) {}),
                        CreditCardWidget(
                            cardNumber: "5252 2626 2442 2626",
                            expiryDate: "17/08/2024",
                            cardHolderName: "xxxxxxx",
                            cvvCode: "xxxxx",
                            showBackView: false,
                            onCreditCardWidgetChange:
                                (CreditCardBrand brand) {})
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 400,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30)),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  children: [
                    CreditCardDetails(expiryDate: '08/24'),
                    Divider(),
                    CreditCardDetails(expiryDate: '08/24'),
                    Divider(),
                    CreditCardDetails(expiryDate: '08/24'),
                    Divider(),
                    GestureDetector(
                      child: AddMoreCreditCard(),
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.addCards);
                      },
                    )
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
