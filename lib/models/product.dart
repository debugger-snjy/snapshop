import 'package:snapshop/models/category.dart';

class Product {
  late String productName;
  late String productDesc;
  late double productPrice;
  late ProductCategory productCategory;

  Product({
    required this.productName,
    required this.productDesc,
    required this.productPrice,
    required this.productCategory,
  });
}