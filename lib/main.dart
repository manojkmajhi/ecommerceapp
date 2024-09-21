import 'package:ecommerceapp/core/widgets/responsive_widget.dart';
import 'package:ecommerceapp/features/cart/screen/cart_screen.dart';
import 'package:ecommerceapp/features/home/screen/home_screen.dart';
import 'package:ecommerceapp/features/product_details.dart/screen/product_details_screen.dart';
import 'package:ecommerceapp/features/register/screen/register_screen.dart';
import 'package:ecommerceapp/features/signin/screen/signin.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ResponsiveProvider(),
      child: MaterialApp(
        title: 'ToolKit Nepal',
        // initialRoute: "/signinScreen",
        routes: {
          "/": (context) => const HomePage(),
          "/signinScreen": (context) => const SignIn(),
          "/registerScreen": (context) => const RegisterScreen(),
          "/cartScreen": (context) => const CartScreen(),
          "/detailScreen": (context) => const ProductDetailsScreen(),
        },
      ),
    );
  }
}
