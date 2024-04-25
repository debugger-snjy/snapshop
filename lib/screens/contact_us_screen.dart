import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';

class ContactUsScreen extends StatelessWidget {
  const ContactUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(
        centreTitle: true,
        title: "Contact Us",
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
        padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 25,horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [BoxShadow(color: Color.fromRGBO(210, 210, 210, 1.0), blurRadius: 10,spreadRadius: 1)],
          ),
          child: Row(
            children: [
              Icon(
                Icons.headphones_rounded,
                color: Colors.black,
              ),
              SizedBox(width: 15,),
              Text("Customer Services",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),)
            ],
          ),
        ),
      ),
    );
  }
}
