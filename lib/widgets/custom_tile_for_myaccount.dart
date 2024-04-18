import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTile extends StatelessWidget {
  final SvgPicture image;
  final String title;
  final String subtitle;
  const CustomTile({super.key,required this.image,required this.title,required this.subtitle});


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                     Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         image,
                         const SizedBox(width: 20,),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text(title,
                             style: const TextStyle(
                               fontWeight: FontWeight.bold
                             ),
                             ),
                             if (subtitle!="") Text(subtitle,
                             style: const TextStyle(
                               color: Colors.black54
                             ),
                             ),


                           ],
                         ),
                       ],
                     ),

                     const Icon(Icons.arrow_forward_ios)

              ],
            ),
          ),
          Divider()
        ],
      ),
    );
  }
}
