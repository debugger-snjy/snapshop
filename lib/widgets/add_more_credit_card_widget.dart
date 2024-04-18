import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AddMoreCreditCard extends StatelessWidget {
  const AddMoreCreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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

                SvgPicture.asset('lib/assets/icons/credit_card_icon.svg'),
                const SizedBox(width: 30,),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text('Add credit card ',
                        style: TextStyle(color:Colors.white,
                          fontWeight: FontWeight.bold,
                        )),
                    Text('Add new credit or debit card',style:TextStyle(color: Colors.white)

                      ,)
                  ],
                ),
              ],
            ),
           const Icon(Icons.arrow_forward_ios_sharp,color: Colors.white,)
          ],
        ),
      ),
    );;
  }
}
