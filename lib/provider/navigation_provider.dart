import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavigatorProvider extends ChangeNotifier {
  int navbarCount = 5;
  late List<Widget> allItems;

  // Icons Image File Path Lists for all the Items
  List allIcons = [
    "lib/assets/icons/home_icon.svg",
    "lib/assets/icons/category_icon.svg",
    "lib/assets/icons/heart_icon.svg",
    "lib/assets/icons/shopping_bag_icon.svg",
    "lib/assets/icons/user_icon.svg",
  ];

  NavigatorProvider() {
    allItems = [];
    addItems();
  }

  addItems(){
    for (int i = 0; i < navbarCount; i++) {
      allItems.add(
        InkWell(
          onTap: () {
            activeIcon(i);
          },
          child: Container(
              padding: const EdgeInsets.all(10),
              child: SvgPicture.asset(allIcons[i],
                  height: 30,
                  colorFilter:
                  const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  width: 30)),
        ),
      );
    }
  }

  activeIcon(int i) {
    allItems.clear();
    addItems();
    allItems.removeAt(i);
    allItems.insert(
        i,
        InkWell(
          onTap: () => activeIcon(i), // Use a lambda function
          child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: Colors.black),
              padding: const EdgeInsets.all(10),
              child: SvgPicture.asset(allIcons[i],
                  height: 30,
                  colorFilter:
                  const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                  width: 30)),
        ));
    notifyListeners();
  }


// Function that return All the Items of the Bottom Navigation
}
