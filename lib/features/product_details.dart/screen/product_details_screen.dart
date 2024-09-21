import 'package:ecommerceapp/features/home/model/product_display_model.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

List<ProductDisplayItem>? datalist;

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    // var productList = ModalRoute.of(context)!.settings.arguments as ProductDisplayItem;

   
    return SafeArea(
      child: Column(
        children: [
          Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(16),
              child: Column(
                children: [
                  SizedBox(
                    height: 250,
                    child: ListView.separated(
                        scrollDirection: Axis.vertical,
                        separatorBuilder: (context, index) => const SizedBox(
                          height: 10,
                        ),
                        itemCount: datalist!.length, itemBuilder: (BuildContext context, int index) { 
                          return Container(
                            height: 100,
                            width: 100,
                            color: Colors.green,
                          );
                         },
                      
                      
                      
                        ),
                  ),
                ],
              )),

          
        ],
      ),
    );
  }
}
