import 'package:flutter/material.dart';


class ProductDisplayItem extends StatelessWidget {
  const ProductDisplayItem(
      {super.key,
      this.backgroundimage,
      required this.productTitle,
      required this.productCategory,
      required this.productPrice,
    });
  final String? backgroundimage;
  final String productTitle;

  final String productCategory;
  final String productPrice;
 

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
