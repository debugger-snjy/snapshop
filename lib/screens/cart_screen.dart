import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snapshop/models/cart.dart';
import 'package:snapshop/models/category.dart';
import 'package:snapshop/utils/app_routes.dart';
import 'package:snapshop/utils/strings.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Cart> allCarts = [
      Cart(
          productName: "Fabric Strap Watch",
          price: 400,
          productImage: "lib/assets/Products/watch.png"),
      Cart(
          productName: "Fabric Strap Watch",
          price: 400,
          productImage: "lib/assets/Products/watch.png"),
    ];

    return Scaffold(
      // App Bar of the Application
      appBar: AppBar(
        // Adding this to remove the pink or purple color on scrolling the grid items
        scrolledUnderElevation: 0,
        title: const Text(
          "Cart",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      // Main Content of the Application
      body: Container(
        color: Colors.white,
        child: ListView.builder(
          itemCount: allCarts.length,
          itemBuilder: (context, index) {
            return Card(
              surfaceTintColor: Color.fromRGBO(250, 250, 250, 1),
              elevation: 5,
              margin: EdgeInsets.fromLTRB(15, 5, 15, 15),
              child: Stack(
                children: [
                  Column(
                    children: [
                      Container(
                        // height: 200,
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 8),
                        // color: Colors.red,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 17,
                            ),
                            ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                // Image border
                                child: Container(
                                  width: 100,
                                  height: 150,
                                  color: Color.fromRGBO(230, 230, 230, 1),
                                  child: Container(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 5),
                                    child: Image.asset(
                                      allCarts[index].productImage,
                                      height: 100,
                                      width: 100,
                                      fit: BoxFit.scaleDown,
                                    ),
                                  ),
                                )),
                            const SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  allCarts[index].productName,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Text("Color : "),
                                    Container(
                                      height: 15,
                                      width: 15,
                                      decoration: BoxDecoration(
                                          color: Color.fromRGBO(51, 72, 32, 1),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                    ),
                                    Text(" | ",
                                        style: TextStyle(
                                            color: Colors.black, fontSize: 20)),
                                    Text(" Size : 32 MM")
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.add_circle_outline,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(" 2 ",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold)),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Icon(
                                      Icons.remove_circle_outline,
                                      size: 20,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "₹ 499.00",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        height: 2,
                        color: Color.fromRGBO(230, 230, 230, 1),
                      )
                    ],
                  ),
                  Positioned(top:10,right:10,child: Icon(Icons.close))
                ],
              ),
            );
          },
        ),
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
                Navigator.popAndPushNamed(context, AppRoutes.homePage);
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
                Navigator.popAndPushNamed(context, AppRoutes.categoryPage);
              },
              child: SvgPicture.asset(StringResources.allIcons[1],
                  height: 30,
                  colorFilter:
                      const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  width: 30),
            ),

            // Heart Icon
            InkWell(
              onTap: () {
                Navigator.popAndPushNamed(context, AppRoutes.wishlistPage);
              },
              child: SvgPicture.asset(StringResources.allIcons[2],
                  height: 30,
                  colorFilter:
                      const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  width: 30),
            ),

            // Shopping Bag Icon
            InkWell(
              onTap: () {},
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black),
                  padding: const EdgeInsets.all(10),
                  child: SvgPicture.asset(StringResources.allIcons[3],
                      height: 30,
                      colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      width: 30)),
            ),

            // User Icon
            InkWell(
              onTap: () {
                Navigator.popAndPushNamed(context, AppRoutes.accountPage);
              },
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
