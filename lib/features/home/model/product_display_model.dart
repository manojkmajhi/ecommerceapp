import 'package:flutter/material.dart';


class ProductDisplayItem extends StatelessWidget {
  const ProductDisplayItem(
      {super.key,
      this.backgroundimage,
      required this.productTitle,
      required this.productCategory,
      required this.productPrice,
      required this.navigateTo});
  final String? backgroundimage;
  final String productTitle;

  final String productCategory;
  final String productPrice;
  final Widget navigateTo;

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
