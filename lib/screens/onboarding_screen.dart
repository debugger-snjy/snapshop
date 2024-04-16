// ----------------------------
// Created By : Sanjay Sukhwani
// -----------------------------
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snapshop/provider/slider_provider.dart';
import 'package:snapshop/utils/app_routes.dart';
import 'package:snapshop/widgets/button_dart_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SliderController>(
        builder: ((context, sliderModel, child) => Scaffold(
              body: Stack(
                fit: StackFit.expand,
                children: [
                  // Background Image
                  ShaderMask(
                    shaderCallback: (rect) => const LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.center,
                      colors: [
                        Color.fromRGBO(20, 20, 20, 0.7),
                        Colors.transparent,
                      ],
                    ).createShader(rect),
                    blendMode: BlendMode.darken,
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(sliderModel.currentImage),
                          fit: BoxFit.cover,
                          colorFilter: const ColorFilter.mode(
                              Colors.white, BlendMode.darken),
                        ),
                      ),
                    ),
                  ),

                  // Content
                  Container(
                    margin: const EdgeInsets.fromLTRB(15, 10, 15, 61),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Add your content here
                        Text(
                          sliderModel
                              .onBoardingScreensTitle[sliderModel.counter]
                              .toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 32.0,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 8.0,
                        ),
                        Text(
                          sliderModel
                              .onBoardingScreensSubtitle[sliderModel.counter]
                              .toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w400,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 16.0,
                        ),
                        DarkButton(
                          radius: sliderModel.counter == 0 ? 10 : 50,
                          text: Text(
                            "${sliderModel.onBoardingScreensNextBtnText[sliderModel.counter]}",
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                          actions: () {
                            if (sliderModel.counter == 2) {

                              // TODO : Uncomment the below line
                              // Navigator.popAndPushNamed(context, AppRoutes.loginPage);

                              // Adding Navigator to HomePage for testing
                              Navigator.popAndPushNamed(context, AppRoutes.homePage);
                            } else {
                              sliderModel.updateScreen();
                            }
                          },
                          buttonWidth: MediaQuery.of(context).size.width * 0.8,
                          buttonHeight:
                              MediaQuery.of(context).size.height * 0.075,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )));
  }
}
