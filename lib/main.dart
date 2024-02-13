import 'package:flutter/material.dart';
import 'package:prectical_exam_13_2_24/utils/route_utils.dart';
import 'package:prectical_exam_13_2_24/view/screen/cart_page.dart';
import 'package:prectical_exam_13_2_24/view/screen/detial_page.dart';
import 'package:prectical_exam_13_2_24/view/screen/home_page.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        MyRoute.homepage: (context) => const HomePage(),
        MyRoute.detialpage: (context) => const DetialPage(),
        MyRoute.cartpage: (context) => const CartPage(),
      },
    );
  }
}
