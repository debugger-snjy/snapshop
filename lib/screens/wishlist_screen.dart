import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snapshop/models/wishlist.dart';
import 'package:snapshop/utils/app_routes.dart';
import 'package:snapshop/utils/strings.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Wishlist> allWishlists = [
      Wishlist(
          productImage: "lib/assets/Products/running_shoe1.png",
          productLogoImage: "lib/assets/icons/nike_icon.svg",
          productName: "Running Shoes",
          productRating: 4.5,
          productReviews: 1045,
          productPrice: 235),
      Wishlist(
          productImage: "lib/assets/Products/running_shoe2.png",
          productLogoImage: "lib/assets/icons/adiddas_icon.svg",
          productName: "Running Shoes",
          productRating: 4.5,
          productReviews: 1045,
          productPrice: 235),
      Wishlist(
          productImage: "lib/assets/Products/running_shoe3.png",
          productLogoImage: "lib/assets/icons/jordan_icon.svg",
          productName: "Running Shoes",
          productRating: 4.5,
          productReviews: 1045,
          productPrice: 235),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      // App Bar of the Application
      appBar: AppBar(
        // Adding this to remove the pink or purple color on scrolling the grid items
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        title: const Text("Wishlist"),
      ),

      // Main Content of the Application
      body: SingleChildScrollView(
        child: Column(children: [
          // TextButton(onPressed: (){
          //   Navigator.pushNamed(context, AppRoutes.productDetailsPage);
          // }, child: Text("Product Detail Screen")),

          // Adding the Search Bar with the icons
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 18),
            decoration: BoxDecoration(
                border: Border.all(
                    color: const Color.fromRGBO(191, 191, 191, 1), width: 2),
                borderRadius: BorderRadius.circular(16)),
            child: TextField(
              textAlignVertical: TextAlignVertical.center,

              // Adding the Icons and Styling in the Search box
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(1),
                border: InputBorder.none,
                hintText: "Search",

                // Adding the Search Icon
                prefixIcon: IconButton(
                    onPressed: () {}, icon: const Icon(Icons.search)),
              ),
            ),
          ),

          // Adding the Space
          const SizedBox(
            height: 5,
          ),

          // Adding Wishlist Item

          Container(
            // color: Colors.redAccent,
            margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
            height: MediaQuery.of(context).size.height,
            child: ListView.builder(
              itemCount: allWishlists.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    children: [
                      Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            allWishlists[index].productImage,
                            height: 95.0,
                            width: 95.0,
                          ),
                        ),
                        Positioned(
                          child: CircleAvatar(
                            child: Container(
                              child: SvgPicture.asset(
                                  allWishlists[index].productLogoImage,
                                  height: 20,
                                  width: 20),
                            ),
                            backgroundColor: Colors.white,
                          ),
                          top: 0,
                          right: 0,
                          height: 30,
                          width: 30,
                        )
                      ]),
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.symmetric(horizontal: 15),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(allWishlists[index].productName),
                                SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.orangeAccent,
                                      size: 15,
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      allWishlists[index]
                                          .productRating
                                          .toString(),
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    SizedBox(width: 5),
                                    Text(
                                      "(${allWishlists[index].productReviews.toString()} Reviews)",
                                      style: TextStyle(
                                          color:
                                              Color.fromRGBO(191, 191, 191, 1),
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "₹ ${allWishlists[index].productPrice.toString()}",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                      ),
                      const Icon(
                        Icons.favorite,
                        color: Colors.black,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ]),
      ),

      // Bottom Navigation Bar
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
              }, // Use a lambda function
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
              onTap: () {}, // Use a lambda function
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.black),
                  padding: const EdgeInsets.all(10),
                  child: SvgPicture.asset(StringResources.allIcons[2],
                      height: 30,
                      colorFilter:
                          const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      width: 30)),
            ),

            // Shopping Bag Icon
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.cartPage);
              },
              child: SvgPicture.asset(StringResources.allIcons[3],
                  height: 30,
                  colorFilter:
                      const ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  width: 30),
            ),

            // User Icon
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.accountPage);
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
