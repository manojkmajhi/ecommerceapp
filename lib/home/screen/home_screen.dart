import 'package:ecommerceapp/cart/screen/cart_screen.dart';
import 'package:ecommerceapp/home/widget/button_display.dart';
import 'package:ecommerceapp/home/widget/product_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

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
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const CartScreen()));
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.notifications,
              color: Colors.white,
              size: 30,
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
                    ),
                    ButtonDisplayItem(
                      toolsbtn: "New Tools",
                    ),
                    ButtonDisplayItem(
                      toolsbtn: "Daily Use",
                    ),
                    ButtonDisplayItem(
                      toolsbtn: "Agriculture",
                    ),
                    ButtonDisplayItem(
                      toolsbtn: "Project Tools",
                    ),
                    ButtonDisplayItem(
                      toolsbtn: "Plumbing",
                    ),
                    ButtonDisplayItem(
                      toolsbtn: "Electrical",
                    ),
                  ]),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProductCard(
                        imagePath: "assets/images/hammar.png",
                        title: "Hammer",
                        category: "Daily Use",
                        price: "NRs.180.00",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ProductCard(
                        imagePath: "assets/images/screwdriver.png",
                        title: "Screwdriver",
                        category: "Electrical",
                        price: "NRs.50.00",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProductCard(
                        imagePath: "assets/images/kodalo.jpg",
                        title: "Kodalo",
                        category: "Agriculture",
                        price: "NRs.270.00",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ProductCard(
                        imagePath: "assets/images/pipe_wrench.jpg",
                        title: "Pipe Wrench",
                        category: "Electrical",
                        price: "NRs.480.00",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ProductCard(
                        imagePath: "assets/images/kodalo.jpg",
                        title: "Kodalo",
                        category: "Agriculture",
                        price: "NRs.270.00",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ProductCard(
                        imagePath: "assets/images/pipe_wrench.jpg",
                        title: "Pipe Wrench",
                        category: "Electrical",
                        price: "NRs.480.00",
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                ],
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
