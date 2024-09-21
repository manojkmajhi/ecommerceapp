import 'package:ecommerceapp/core/widgets/responsive_widget.dart';
// import 'package:ecommerceapp/features/checkout/screen/checkout_with_khalti_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  // final List<Map<String, dynamic>> cartItems = [
  //   {
  //     'title': 'Hammar',
  //     'subtitle': 'Daily use',
  //     'price': 180.00,
  //     'image': 'assets/images/hammar.png',
  //     'quantity': 1,
  //   },
  //   {
  //     'title': 'Pipe Wrench',
  //     'subtitle': 'Plumbing',
  //     'price': 480.00,
  //     'image': 'assets/images/pipe_wrench.jpg',
  //     'quantity': 1,
  //   },
  // ];

  // double get totalPrice => cartItems.fold(
  //     0, (sum, item) => sum + (item['price'] as double) * item['quantity']);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 3, 194, 35),
        title: const Text(
          'My Cart',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
              fontStyle: FontStyle.italic),
        ),
        actions: [
          Consumer<ResponsiveProvider>(builder: (context, provider, _) {
            return IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                provider.increment();
              },
            );
          }),
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
                  size: 30,
                ),
              ),
              Consumer<ResponsiveProvider>(builder: (context, provider, _) {
                return Container(
                  height: 22,
                  width: 22,
                  padding: const EdgeInsets.all(1.5),
                  margin: const EdgeInsets.only(left: 35),
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
          Consumer<ResponsiveProvider>(builder: (context, provider, _) {
            return IconButton(
              icon: const Icon(
                Icons.notifications,
                color: Colors.white,
                size: 30,
              ),
              onPressed: () {
                provider.decrement();
              },
            );
          }),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: const SafeArea(
          child: Center(
        child: Column(children: [
          Text("Cart Screen"),
        ]),
      )),

      // body: SafeArea(
      //   child: Column(
      //     children: [
      //       Expanded(
      //         child: ListView.builder(
      //           itemCount: cartItems.length,
      //           itemBuilder: (context, index) {
      //             final item = cartItems[index];
      //             return Dismissible(
      //               key: Key(item['title']),
      //               direction: DismissDirection.endToStart,
      //               onDismissed: (direction) {
      //                 setState(() {
      //                   cartItems.removeAt(index);
      //                 });
      //               },
      //               background: Container(
      //                 alignment: Alignment.centerRight,
      //                 padding: const EdgeInsets.symmetric(horizontal: 20),
      //                 color: Colors.red,
      //                 child: const Icon(
      //                   Icons.delete,
      //                   color: Colors.white,
      //                 ),
      //               ),
      //               child: Card(
      //                 margin: const EdgeInsets.symmetric(
      //                     horizontal: 10, vertical: 5),
      //                 child: ListTile(
      //                   leading: Image.asset(
      //                     item['image'],
      //                     width: 60,
      //                     height: 60,
      //                     fit: BoxFit.cover,
      //                   ),
      //                   title: Text(
      //                     item['title'],
      //                     style: const TextStyle(
      //                         fontWeight: FontWeight.bold, fontSize: 16),
      //                   ),
      //                   subtitle: Text('NRs. ${item['price'].toString()}',
      //                       style: const TextStyle(
      //                         fontSize: 16,
      //                         fontWeight: FontWeight.bold,
      //                       )),
      //                   trailing: Row(
      //                     mainAxisSize: MainAxisSize.min,
      //                     children: [
      //                       IconButton(
      //                         icon: const Icon(Icons.remove),
      //                         onPressed: () {
      //                           setState(() {
      //                             if (item['quantity'] > 1) {
      //                               item['quantity']--;
      //                             }
      //                           });
      //                         },
      //                       ),
      //                       Text('${item['quantity']}'),
      //                       IconButton(
      //                         icon: const Icon(Icons.add),
      //                         onPressed: () {
      //                           setState(() {
      //                             item['quantity']++;
      //                           });
      //                         },
      //                       ),
      //                     ],
      //                   ),
      //                 ),
      //               ),
      //             );
      //           },
      //         ),
      //       ),
      //       Padding(
      //         padding: const EdgeInsets.symmetric(horizontal: 16.0),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.stretch,
      //           children: [
      //             Text(
      //               'Total: Nrs ${totalPrice.toStringAsFixed(2)}',
      //               style: const TextStyle(
      //                 fontSize: 20,
      //                 fontWeight: FontWeight.bold,
      //               ),
      //               textAlign: TextAlign.right,
      //             ),
      //             const SizedBox(height: 10),
      //             ElevatedButton(
      //               onPressed: () {
      //                 Navigator.of(context).push(MaterialPageRoute(
      //                     builder: (context) => const CheckoutWithKhalti()));
      //               },
      //               style: ElevatedButton.styleFrom(
      //                 backgroundColor: const Color.fromARGB(255, 29, 187, 34),
      //                 padding: const EdgeInsets.symmetric(vertical: 15),
      //               ),
      //               child: const Text(
      //                 'Proceed to Checkout',
      //                 style: TextStyle(
      //                   color: Colors.white,
      //                   fontSize: 18,
      //                 ),
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //       const SizedBox(height: 10),
      //     ],
      //   ),
      // ),
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
