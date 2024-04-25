import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:snapshop/models/category.dart';
import 'package:snapshop/models/product.dart';
import 'package:snapshop/provider/sizetab_provider.dart';
import 'package:snapshop/widgets/button_dart_widget.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final viewedProduct =
    //     ModalRoute.of(context)!.settings.arguments as Product?;

    Product viewedProduct = Product(
        productName: "Sports tech",
        productDesc:
            "Sports tech. Street smarts. Made in Portugal, Bolster blends luxurious leathers to everyday cool. Be bold. Be you.",
        productPrice: 457.800,
        productImage: "lib/assets/ProductWithModel/shoe_model1.png",
        onlyProductImages: [
          "lib/assets/Products/shoe_1.png",
          "lib/assets/Products/shoe_2.png",
          "lib/assets/Products/shoe_3.png",
        ],
        productCategory: ProductCategory(
            categoryName: "Shoes",
            categoryImage: "lib/assets/Products/shoe_1.png"));

    return Scaffold(
      backgroundColor: Colors.white,
      // App Bar of the Application
      appBar: AppBar(
        // Adding this to remove the pink or purple color on scrolling the grid items
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        title: const Text(
          "Product Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      // Main Content of the Application
      body: Container(
        color: Colors.white,
        child: Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // ONLY Product with different Colors
                  Container(
                    child: Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(242, 242, 242, 1),
                                borderRadius: BorderRadius.circular(10)),
                            margin: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                            padding: const EdgeInsets.all(0),
                            height: 60,
                            width: 60,
                            child: Image.asset(
                              viewedProduct!.onlyProductImages[0]!,
                              height: 70,
                              width: 70,
                            )),
                        Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(242, 242, 242, 1),
                                borderRadius: BorderRadius.circular(10)),
                            margin: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                            padding: const EdgeInsets.all(0),
                            height: 60,
                            width: 60,
                            child: Image.asset(
                              viewedProduct.onlyProductImages[1]!,
                              height: 70,
                              width: 70,
                            )),
                        Container(
                            decoration: BoxDecoration(
                                color: const Color.fromRGBO(242, 242, 242, 1),
                                borderRadius: BorderRadius.circular(10)),
                            margin: const EdgeInsets.fromLTRB(0, 16, 0, 0),
                            padding: const EdgeInsets.all(10),
                            height: 60,
                            width: 60,
                            child: Image.asset(
                              viewedProduct.onlyProductImages[2]!,
                              height: 70,
                              width: 70,
                            )),
                      ],
                    ),
                  ),

                  // Product Image with Model
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20.0),
                    child: Image.asset(
                      viewedProduct.productImage,
                    ),
                  )

                  // Container(
                  //     height: 330,
                  //     width: 250,
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(100)),
                  //     child: Image.asset(
                  //       viewedProduct.productImage,
                  //       fit: BoxFit.fill,
                  //     ))
                ],
              ),

              // Space Between the Images and the text
              const SizedBox(
                height: 0,
              ),

              // Product Description
              Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 50, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      softWrap: true,
                      viewedProduct.productName,
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Inter'),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      "₹ ${viewedProduct.productPrice}",
                      style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'Inter'),
                      textAlign: TextAlign.start,
                    ),

                    const SizedBox(
                      height: 20,
                    ),

                    Text(
                      viewedProduct.productDesc,
                      style: const TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(160, 160, 160, 1),
                          fontWeight: FontWeight.w100,
                          letterSpacing: .5,
                          fontFamily: 'Inter'),
                      textAlign: TextAlign.justify,
                    ),

                    const SizedBox(
                      height: 30,
                    ),
                    // Size and Amount
                  ],
                ),
              ),

              // Sizes and Tabs
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Size",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 16),
                        ),
                        Row(
                          children: [
                            Text(
                              "EU",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 14),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "UK",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Color.fromRGBO(160, 160, 160, 1)),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "US",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Color.fromRGBO(160, 160, 160, 1)),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                          ],
                        ),
                      ],
                    ),
                    // Adding the Sizes
                    Consumer<SizeTabNavigator>(
                      builder: (context, value, child) => Container(
                        height: 65,
                        margin: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: value.showCategoryTab(),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              // Add to Cart Button
              Center(
                child: DarkButton(
                  radius: 50,
                  text: Text(
                    "Add to Cart",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600),
                  ),
                  actions: () {},
                  buttonWidth: MediaQuery.of(context).size.width * 0.9,
                  buttonHeight: MediaQuery.of(context).size.height * 0.075,
                ),
              )
            ],
          ),
        ),
      ),

      // Bottom Navigation Not Needed Here
    );
  }
}
