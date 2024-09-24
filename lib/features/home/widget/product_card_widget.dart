import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommerceapp/core/widgets/responsive_widget.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    this.backgroundimage,
    required this.productTitle,
    required this.productCategory,
    required this.productPrice,
    required this.isPressed,
    required this.onWishlistPressed,
  });

  final String? backgroundimage;
  final String productTitle;
  final String productCategory;
  final String productPrice;
  final bool isPressed;
  final VoidCallback onWishlistPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                backgroundimage ?? 'assets/default_image.png',
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              productTitle,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              productCategory,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              productPrice,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 8),
            Consumer<ResponsiveProvider>(
              builder: (context, provider, _) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // ElevatedButton(
                    //   onPressed: () {},
                    //   style: ElevatedButton.styleFrom(
                    //     backgroundColor: Colors.white,
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(16),
                    //       side:
                    //           const BorderSide(color: Colors.black, width: 1.1),
                    //     ),
                    //   ),
                    //   child:
                    //       const Icon(Icons.shopping_cart, color: Colors.black),
                    // ),
                    // const SizedBox(width: 5),
                    // ElevatedButton(
                    //   onPressed: () {
                    //     provider.increment();
                    //   },
                    //   style: ElevatedButton.styleFrom(
                    //     backgroundColor: Colors.white,
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(16),
                    //       side:
                    //           const BorderSide(color: Colors.black, width: 1.1),
                    //     ),
                    //   ),
                    //   child: const Icon(Icons.favorite, color: Colors.black),
                    // ),

                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_cart,
                      ),
                    ),
                    const SizedBox(width: 5),
                    IconButton(
                      onPressed: onWishlistPressed,
                      icon: Icon(
                        isPressed ? Icons.favorite : Icons.favorite_outline,
                      ),
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
