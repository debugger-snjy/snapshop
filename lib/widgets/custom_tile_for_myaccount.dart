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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       image,
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text(title),
                           Text(subtitle)
                         ],
                       ),
                     ],
                   ),

                   const Icon(Icons.arrow_forward_ios)

            ],
          ),
          Divider()
        ],
      ),
    );
  }
}
