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
        onlyProductImages : [
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
        color: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                Container(color:Colors.transparent,height: 80,width: 80,child:Image.asset(viewedProduct.onlyProductImages[0]!)),
                Container(color:Colors.transparent,height: 80,width: 80,child:Image.asset(viewedProduct.onlyProductImages[1]!)),
                Container(color:Colors.transparent,height: 80,width: 80,child:Image.asset(viewedProduct.onlyProductImages[2]!)),
              ],
            ),
            Container(color:Colors.transparent,child: Image.asset(viewedProduct.productImage))
          ],
        ),
      ),


      // Bottom Navigation Not Needed Here
    );
  }
}
