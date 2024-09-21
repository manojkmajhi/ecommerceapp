import 'package:ecommerceapp/core/widgets/responsive_widget.dart';
import 'package:ecommerceapp/features/cart/screen/cart_screen.dart';
import 'package:ecommerceapp/features/dailyuse/screen/daily_use_screen.dart';
import 'package:ecommerceapp/features/home/model/product_display_model.dart';
import 'package:ecommerceapp/features/home/widget/button_display.dart';
import 'package:ecommerceapp/features/home/widget/product_card_widget.dart';
import 'package:ecommerceapp/features/product_details.dart/screen/product_details_screen.dart';

// import 'package:ecommerceapp/features/product_details.dart/screen/product_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<ProductDisplayItem> productList = [
    const ProductDisplayItem(
      backgroundimage: "assets/images/hammar.png",
      productTitle: "Hammer",
      productCategory: "Daily Use",
      productPrice: "NRs.180.00",
      navigateTo: ProductDetailsScreen(),
    ),
    const ProductDisplayItem(
      backgroundimage: "assets/images/screwdriver.png",
      productTitle: "Screwdriver",
      productCategory: "Electrical",
      productPrice: "NRs.50.00",
      navigateTo: ProductDetailsScreen(),
    ),
    const ProductDisplayItem(
      backgroundimage: "assets/images/kodalo.jpg",
      productTitle: "Kodalo",
      productCategory: "Agriculture",
      productPrice: "NRs.270.00",
      navigateTo: ProductDetailsScreen(),
    ),
    const ProductDisplayItem(
      backgroundimage: "assets/images/pipe_wrench.jpg",
      productTitle: "Pipe Wrench",
      productCategory: "Electrical",
      productPrice: "NRs.480.00",
      navigateTo: CartScreen(),
    ),
    const ProductDisplayItem(
      backgroundimage: "assets/images/InchTape.png",
      productTitle: "Inch Tape",
      productCategory: "Construction",
      productPrice: "NRs.80.00",
      navigateTo: DailyUse(),
    ),
    const ProductDisplayItem(
      backgroundimage: "assets/images/glove.png",
      productTitle: "Hand Gloves",
      productCategory: "Daily Use",
      productPrice: "NRs.280.00",
      navigateTo: DailyUse(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 194, 35),
        title: GestureDetector(
          onTap: () {},
          child: const Text(
            'ToolKit Nepal',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontStyle: FontStyle.italic),
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.white,
              size: 25,
            ),
            onPressed: () {},
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const CartScreen()));
                },
                icon: const Icon(
                  Icons.shopping_cart,
                  color: Colors.white,
                  size: 25,
                ),
              ),
              Consumer<ResponsiveProvider>(builder: (context, provider, _) {
                return Container(
                  height: 22,
                  width: 22,
                  padding: const EdgeInsets.all(1.5),
                  margin: const EdgeInsets.only(left: 30),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    '${provider.counter}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                );
              }),
            ],
          ),
          Stack(children: [
            IconButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const CartScreen()));
              },
              icon: const Icon(
                Icons.favorite,
                color: Colors.white,
                size: 25,
              ),
            ),
            Consumer<ResponsiveProvider>(builder: (context, provider, _) {
              return Container(
                height: 22,
                width: 22,
                padding: const EdgeInsets.all(1.5),
                margin: const EdgeInsets.only(left: 30),
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  '${provider.counter}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
            }),
          ]),
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
              size: 25,
            ),
            onPressed: () {},
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                child: const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    ButtonDisplayItem(
                      toolsbtn: "Top Tools",
                      navigateTo: DailyUse(),
                    ),
                    ButtonDisplayItem(
                      toolsbtn: "New Tools",
                      navigateTo: DailyUse(),
                    ),
                    ButtonDisplayItem(
                      toolsbtn: "Daily Use",
                      navigateTo: DailyUse(),
                    ),
                    ButtonDisplayItem(
                      toolsbtn: "Agriculture",
                      navigateTo: DailyUse(),
                    ),
                    ButtonDisplayItem(
                      toolsbtn: "Project Tools",
                      navigateTo: DailyUse(),
                    ),
                    ButtonDisplayItem(
                      toolsbtn: "Plumbing",
                      navigateTo: DailyUse(),
                    ),
                    ButtonDisplayItem(
                      toolsbtn: "Electrical",
                      navigateTo: DailyUse(),
                    ),
                  ]),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ListView.separated(
                      shrinkWrap: true,
                      itemCount: (productList.length / 2).ceil(),
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          height: 20,
                        );
                      },
                      itemBuilder: (BuildContext context, int index) {
                        int firstIndex = index * 2;
                        int secondIndex = firstIndex + 1;

                        return Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ProductCard(
                              backgroundimage:
                                  productList[firstIndex].backgroundimage,
                              productTitle:
                                  productList[firstIndex].productTitle,
                              productCategory:
                                  productList[firstIndex].productCategory,
                              productPrice:
                                  productList[firstIndex].productPrice,
                              navigateTo: productList[firstIndex].navigateTo,
                            ),
                            const SizedBox(width: 10),
                            if (secondIndex < productList.length)
                              ProductCard(
                                backgroundimage:
                                    productList[secondIndex].backgroundimage,
                                productTitle:
                                    productList[secondIndex].productTitle,
                                productCategory:
                                    productList[secondIndex].productCategory,
                                productPrice:
                                    productList[secondIndex].productPrice,
                                navigateTo: productList[secondIndex].navigateTo,
                              ),
                          ],
                        );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.favorite),
            label: 'Saved',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.green,
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
