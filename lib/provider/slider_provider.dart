// ----------------------------
// Created By : Sanjay Sukhwani
// -----------------------------

// Imports
import 'package:flutter/material.dart';
import 'package:snapshop/utils/strings.dart';

// Provider Class
class SliderController extends ChangeNotifier {

  // Variables that contain data Screen Wise needed in StringResources
  List onBoardingScreens = StringResources.splashScreenPaths;
  List onBoardingScreensTitle = StringResources.splashScreenTitles;
  List onBoardingScreensSubtitle = StringResources.splashScreenSubTitles;
  List onBoardingScreensNextBtnText = StringResources.splashScreenNextBtnText;

  late String currentImage;
  late int counter;

  SliderController() {
    currentImage = onBoardingScreens.first;
    counter = 0;
  }

  updateScreen() {
    counter++;
    if (counter<=2) {
      currentImage = onBoardingScreens[counter];
    }
    notifyListeners();
  }
}
