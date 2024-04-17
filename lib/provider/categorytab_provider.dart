import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/strings.dart';

class CategoryTabNavigator extends ChangeNotifier {
  int itemCount = StringResources.appMainCategory.length;
  late List<Widget> allItems;

  CategoryTabNavigator() {
    allItems = [];
    addItemInCategoryTab();
    selectBreadItem(0);
  }

  void addItemInCategoryTab() {
    for (int i = 0; i < itemCount; i++) {
      allItems.add(Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.fromLTRB(0, 10, 16, 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Color.fromRGBO(230, 230, 230, 1.0),
              border: Border.all(
                  color: Color.fromRGBO(160, 160, 160, 1),
                  width: 1,
                  style: BorderStyle.solid)),
          child: TextButton(
            style: TextButton.styleFrom(
              splashFactory: NoSplash.splashFactory,
              backgroundColor: Color.fromRGBO(250, 250, 251, 1.0),
            ),
            onPressed: () {
              selectBreadItem(i);
            },
            child: Text(
              StringResources.appMainCategory[i],
              style: TextStyle(color: Color.fromRGBO(160, 160, 160, 1)),
            ),
          )));
    }
  }

  void selectBreadItem(index) {
    allItems.clear();
    addItemInCategoryTab();
    allItems.removeAt(index);
    allItems.insert(
        index,
        Container(
            padding: EdgeInsets.all(0),
            margin: EdgeInsets.fromLTRB(0, 10, 16, 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black,
                border: Border.all(
                    color: Color.fromRGBO(160, 160, 160, 1),
                    width: 1,
                    style: BorderStyle.solid)),
            child: TextButton(
              style: TextButton.styleFrom(
                splashFactory: NoSplash.splashFactory,
                backgroundColor: Colors.black,
              ),
              onPressed: () {
                selectBreadItem(index);
              },
              child: Text(
                StringResources.appMainCategory[index],
                style: TextStyle(color: Colors.white),
              ),
            )));

    notifyListeners();
  }

  Widget showCategoryTab() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: allItems.length,
      itemBuilder: (BuildContext context, int index) {
        // return Text(StringResources.appMainCategory[index],style: TextStyle(),);
        return allItems[index];
      },
    );
  }
}
