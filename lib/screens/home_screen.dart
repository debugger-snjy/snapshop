import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:snapshop/models/category.dart';
import 'package:snapshop/models/product.dart';
import 'package:snapshop/widgets/bottom_navigation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  // Taking the Dummy Data For Now
  List<Product> allProducts = [
    Product(productName: "Jacket",
        productDesc: "This is Jacket",
        productPrice: 120,
        productCategory:ProductCategory(categoryImage: "lib/assets/Products/jacket.png",categoryName: "Jacket"))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SnapShop"),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 18),
            decoration: BoxDecoration(
              border: Border.all(color: const Color.fromRGBO(191, 191, 191, 1),width: 2),
              borderRadius: BorderRadius.circular(16)
            ),
            child: TextField(
              textAlignVertical: TextAlignVertical.center,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(1),
                border: InputBorder.none,
                hintText: "Search",
                prefixIcon:
                IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.qr_code_scanner_rounded),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavbar(),
    );
  }
}
