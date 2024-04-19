import 'package:flutter/material.dart';

class SizeTabNavigator extends ChangeNotifier {
  late List<Widget> allItems;

  int intialStart = 32, finalStart = 45;
  late int itemCount;

  SizeTabNavigator() {
    itemCount = finalStart - intialStart;
    allItems = [];
    addSizes();
    selectSize(0);
  }

  void addSizes() {
    for (int i = 0; i < itemCount; i++) {
      allItems.add(Container(
        padding: const EdgeInsets.all(0),
        margin: const EdgeInsets.fromLTRB(0, 10, 16, 10),
        width: 45,
        // Adjust width and height as needed for your circle
        height: 45,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          // Half of the width/height for a circle
          color: Color.fromRGBO(230, 230, 230, 1.0),
          border: Border.all(
            color: Color.fromRGBO(160, 160, 160, 1),
            width: 1,
            style: BorderStyle.solid,
          ),
        ),
        child: TextButton(
          style: TextButton.styleFrom(
            splashFactory: NoSplash.splashFactory,
            backgroundColor: Color.fromRGBO(250, 250, 251, 1.0),
          ),
          onPressed: () {
            selectSize(i);
          },
          child: Text(
            (i + intialStart).toString(),
            style: const TextStyle(color: Color.fromRGBO(160, 160, 160, 1)),
          ),
        ),
      ));
    }
  }

  void selectSize(index) {
    allItems.clear();
    addSizes();
    allItems.removeAt(index);
    allItems.insert(
        index,
        Container(
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.fromLTRB(0, 10, 16, 10),
          width: 45,
          // Adjust width and height as needed for your circle
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black,
                  offset: Offset.zero,
                  blurRadius: 2,
                  spreadRadius: 0)
            ],
            // Half of the width/height for a circle
            color: Color.fromRGBO(0, 0, 0, 1.0),
            border: Border.all(
              color: Color.fromRGBO(160, 160, 160, 1),
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
          child: TextButton(
            style: TextButton.styleFrom(
              splashFactory: NoSplash.splashFactory,
              backgroundColor: Color.fromRGBO(0, 0, 0, 1.0),
            ),
            onPressed: () {
              selectSize(index);
            },
            child: Text(
              (index + intialStart).toString(),
              style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1.0)),
            ),
          ),
        ));

    notifyListeners();
  }

  Widget showCategoryTab() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: allItems.length,
      itemBuilder: (BuildContext context, int index) {
        return allItems[index];
      },
    );
  }
}
