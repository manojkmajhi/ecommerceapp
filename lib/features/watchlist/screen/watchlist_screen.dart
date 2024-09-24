import 'package:ecommerceapp/core/widgets/responsive_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WatchListScreen extends StatefulWidget {
  const WatchListScreen({super.key});

  @override
  State<WatchListScreen> createState() => _WatchListScreenState();
}

class _WatchListScreenState extends State<WatchListScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ResponsiveProvider>(context);
    return Scaffold(
      body: provider.wishlistCounter == 0
          ? const Center(
              child: Text('Cart is empty'),
            )
          : ListView.separated(
              itemBuilder: (context, index) {
                return const Text('data');
              },
              itemCount: provider.wishlistCounter,
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
            ),
    );
  }
}
