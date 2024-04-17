import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snapshop/models/category.dart';
import 'package:snapshop/utils/strings.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<ProductCategory> allCategories = [
      ProductCategory(
          categoryName: "Back Packs",
          categoryImage: "lib/assets/Categories/backpacks.png"),
      ProductCategory(
          categoryName: "Hand Bag",
          categoryImage: "lib/assets/Categories/handbag.png"),
      ProductCategory(
          categoryName: "Mini Bags",
          categoryImage: "lib/assets/Categories/mini_bags.png"),
      ProductCategory(
          categoryName: "Shoulder Bag",
          categoryImage: "lib/assets/Categories/shoulder_bag.png"),
      ProductCategory(
          categoryName: "Wallet Clutches",
          categoryImage: "lib/assets/Categories/wallet_clutchs.png")
    ];

    return Scaffold(
      // App Bar of the Application
      appBar: AppBar(
        // Adding this to remove the pink or purple color on scrolling the grid items
        scrolledUnderElevation: 0,
        title: const Text("Categories",style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
      ),

      // Main Content of the Application
      body: ListView.builder(
        itemCount: allCategories.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 150,
                padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 8),
                // color: Colors.red,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 17,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20), // Image border
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(48), // Image radius
                        child: Image.asset(allCategories[index].categoryImage,height: 150,width: 150)
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      allCategories[index].categoryName,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
              ),
              const Divider(
                height: 2,
                color: Color.fromRGBO(230, 230, 230, 1),
              )
            ],
          );
        },
      ),

      // Added Bottom Navigation Bar
      bottomNavigationBar: SafeArea(
        maintainBottomViewPadding: true,
        minimum: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Active Home Icon
            InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(StringResources.allIcons[0],
                  height: 30,
                  colorFilter:
                      const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  width: 30),
            ),

            // Category Icon
            InkWell(
              onTap: () {
                // Nothing should happen if the User is in Home Screen
              },
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black),
                  padding: const EdgeInsets.all(10),
                  child: SvgPicture.asset(StringResources.allIcons[1],
                      height: 30,
                      colorFilter:
                          const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      width: 30)),
            ),

            // Heart Icon
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(StringResources.allIcons[2],
                  height: 30,
                  colorFilter:
                      const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  width: 30),
            ),

            // Shopping Bag Icon
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(StringResources.allIcons[3],
                  height: 30,
                  colorFilter:
                      const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  width: 30),
            ),

            // User Icon
            InkWell(
              onTap: () {},
              child: SvgPicture.asset(StringResources.allIcons[4],
                  height: 30,
                  colorFilter:
                      const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  width: 30),
            ),
          ],
        ),
      ),
    );
  }
}
