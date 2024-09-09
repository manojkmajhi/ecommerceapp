import 'package:ecommerceapp/cart/screen/cart_screen.dart';
import 'package:ecommerceapp/home/screen/home_screen.dart';
import 'package:ecommerceapp/register/screen/register_screen.dart';
import 'package:ecommerceapp/signin/screen/signin.dart';
import 'package:flutter/material.dart';

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
    return MaterialApp(
      title: 'ToolKit Nepal',
      initialRoute: "/registerScreen",
      routes: {
        "/": (context) => const HomePage(),
        "/signinScreen": (context) => const SignIn(),
        "/registerScreen": (context) => const RegisterScreen(),
        "/cartScreen": (context) => const CartScreen(),
      },
    );
  }
}
