import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CreditCardDetails extends StatelessWidget {
  const CreditCardDetails({super.key, required this.expiryDate});
  final String expiryDate;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(30)
      ),
      child: Padding(
        padding:const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [

                SvgPicture.asset('lib/assets/PaymentCardDesign/master_card_symbol.svg'),
                SizedBox(width: 30,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                 children: [

                   const Text('Master Card',
                       style: TextStyle(color:Colors.white,
                       fontWeight: FontWeight.bold,
                       )),
                   Text(expiryDate,style:const TextStyle(color: Colors.white)

                     ,)
                 ],
                ),
              ],
            ),
            SvgPicture.asset('lib/assets/icons/untick_icon_dark.svg'),
          ],
        ),
      ),
    );
  }
}
