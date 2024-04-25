import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const CustomAppBar(
        centreTitle: true,
        title: "Terms & Conditions",
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Last update: 17/2/2023",style: TextStyle(fontSize:16,fontWeight: FontWeight.w500,letterSpacing: 0.3),),
            SizedBox(height: 10,),
            Text("Please read these terms of service, carefully before using our app operated by us.",style: TextStyle(fontSize:17,letterSpacing: 0.3,height: 1.5),),
            SizedBox(height: 10,),
            Text("Conditions of Uses",style: TextStyle(fontSize:18,fontWeight: FontWeight.w700),),
            SizedBox(height: 10,),
            Text("""It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).""",style: TextStyle(letterSpacing: 0.3,height: 1.5,fontSize:16,)),
            SizedBox(height: 10,),
          ],

        ),
      ),
    );
  }
}
