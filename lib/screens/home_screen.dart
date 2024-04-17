import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:snapshop/models/category.dart';
import 'package:snapshop/models/product.dart';
import 'package:snapshop/provider/categorytab_provider.dart';
import 'package:snapshop/utils/strings.dart';
import 'package:snapshop/widgets/bottom_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Taking the Dummy Data For Now
  List<Product> allProducts = [
    Product(
        productName: "Jacket",
        productDesc: "This is Jacket",
        productPrice: 120,
        productImage: "lib/assets/Products/jacket.png",
        productCategory: ProductCategory(
            categoryImage: "lib/assets/Products/jacket.png",
            categoryName: "Jacket")),
    Product(
        productName: "Pant",
        productDesc: "This is Pant",
        productPrice: 20,
        productImage: "lib/assets/Products/pant.png",
        productCategory: ProductCategory(
            categoryImage: "lib/assets/Products/pant.png",
            categoryName: "Pants")),
    Product(
        productName: "Jacket",
        productDesc: "This is Jacket",
        productPrice: 120,
        productImage: "lib/assets/Products/jacket2.png",
        productCategory: ProductCategory(
            categoryImage: "lib/assets/Products/jacket2.png",
            categoryName: "Jacket2")),
    Product(
        productName: "Dress",
        productDesc: "This is Dress",
        productPrice: 120,
        productImage: "lib/assets/Products/dress.png",
        productCategory: ProductCategory(
            categoryImage: "lib/assets/Products/dress.png",
            categoryName: "Dress"))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // App Bar of the Application
      appBar: AppBar(
          // Adding this to remove the pink or purple color on scrolling the grid items
          scrolledUnderElevation: 0,
          title: const Text(StringResources.appname),
      ),

      // Main Content of the Application
      body: Column(children: [

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
              prefixIcon:
                  IconButton(onPressed: () {}, icon: const Icon(Icons.search)),

              // Adding the Camera & QR Scanner Icons
              suffixIcon: SizedBox(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.camera_alt_rounded),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: const Icon(Icons.qr_code_scanner_rounded),
                      onPressed: () {},
                    )
                  ],
                ),
              ),
            ),
          ),
        ),

        // Adding the Space
        const SizedBox(
          height: 5,
        ),

        // Adding the Main Categories BreadCrumb
        Consumer<CategoryTabNavigator>(
          builder: (context, value, child) => Container(
            height: 65,
            margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: value.showCategoryTab(),
          ),
        ),

        // Adding the Space
        const SizedBox(
          height: 5,
        ),

        // Rendering the Product Items
        Container(
          height: MediaQuery.of(context).size.height * 0.618,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          child: GridView.builder(
            itemCount: allProducts.length, // Number of items in the grid
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // Number of columns
              crossAxisSpacing: 10.0, // Spacing between columns
              mainAxisSpacing: 10.0, // Spacing between rows
              childAspectRatio: 0.7, // Ratio of item width to item height
            ),
            itemBuilder: (BuildContext context, int index) {
              // You can replace Container with any widget you want for each grid item
              return Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                // color: Colors.blue, // Just for demonstration
                child: Center(
                  child: Stack(
                    fit: StackFit.expand,
                    children: [

                      // Background Image
                      ShaderMask(
                        shaderCallback: (rect) => const LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.center,
                          colors: [
                            Color.fromRGBO(255, 255, 255, 0.1),
                            Colors.transparent,
                          ],
                        ).createShader(rect),
                        blendMode: BlendMode.darken,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image:
                                  AssetImage(allProducts[index].productImage),
                              fit: BoxFit.cover,
                              colorFilter: const ColorFilter.mode(
                                  Colors.black26, BlendMode.darken),
                            ),
                          ),
                        ),
                      ),

                      // Content of the Product with Product Price
                      Positioned(
                          bottom: 12,
                          left: 12,
                          child: Column(
                            children: [
                              Text(
                                allProducts[index].productName,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "₹ ${allProducts[index].productPrice.toString()}",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          )
                      ),

                      // Icons for the Shopping Bag
                      Positioned(
                        bottom: 12,
                        right: 12,
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30), color: Colors.black),
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset(StringResources.shoppingIcon,
                                height: 15,
                                colorFilter:
                                const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                                width: 15)),
                      ),

                      // Icons for the Favourites
                      Positioned(
                        top: 12,
                        right: 12,
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30), color: Colors.black),
                            padding: const EdgeInsets.all(10),
                            child: SvgPicture.asset(StringResources.favoriteIcon,
                                height: 15,
                                colorFilter:
                                const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                                width: 15)),
                      )

                    ],
                  ),
                ),
              );
            },
          ),
        )

      ]),
      bottomNavigationBar: const BottomNavbar(),
    );
  }
}
