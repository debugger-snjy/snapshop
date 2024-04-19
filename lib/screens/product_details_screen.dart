import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:snapshop/models/category.dart';
import 'package:snapshop/models/product.dart';
import 'package:snapshop/utils/strings.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
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
      // App Bar of the Application
      appBar: AppBar(
        // Adding this to remove the pink or purple color on scrolling the grid items
        scrolledUnderElevation: 0,
        title: const Text(
          "Product Details",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),

      // Main Content of the Application
      body: Container(
        // color: Colors.red,
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // ONLY Product with different Colors
                  Container(
                    margin: EdgeInsets.fromLTRB(0, 45, 0, 0),
                    child: Column(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(242, 242, 242, 1),
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
                            padding: EdgeInsets.all(0),
                            height: 60,
                            width: 60,
                            child: Image.asset(
                              viewedProduct.onlyProductImages[0]!,
                              height: 70,
                              width: 70,
                            )),
                        Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(242, 242, 242, 1),
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
                            padding: EdgeInsets.all(0),
                            height: 60,
                            width: 60,
                            child: Image.asset(
                              viewedProduct.onlyProductImages[1]!,
                              height: 70,
                              width: 70,
                            )),
                        Container(
                            decoration: BoxDecoration(
                                color: Color.fromRGBO(242, 242, 242, 1),
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
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
                  Container(
                      // color: Colors.blue,
                      child: Image.asset(viewedProduct.productImage))
                ],
              ),

              // Space Between the Images and the text
              SizedBox(
                height: 50,
              ),

              // Product Description
              Container(
                margin: EdgeInsets.f,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
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
                    Text(
                      viewedProduct.productDesc,
                      style: const TextStyle(
                          fontSize: 12,
                          color: Color.fromRGBO(160, 160, 160, 1),
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.3,
                          fontFamily: 'Inter'),
                      textAlign: TextAlign.justify,
                    ),
                  ],
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
