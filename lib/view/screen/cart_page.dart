import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff607274),
        centerTitle: true,
        title: Text(
          "CartPage",
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Color(0xffDED0B6),
    );
  }
}
