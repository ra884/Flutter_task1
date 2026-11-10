import 'package:flutter/material.dart';
import 'package:stateful_task/custom_listtile.dart';

class CartPage extends StatefulWidget {
  CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BasketBall",
          style: TextStyle(
            fontSize: 30,
            fontWeight: .bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 223, 166, 233),
      ),

      body: Container(
        child: Custom_listtile(
          icon: Icons.camera,
          txt1: "Camera",
          txt2: "price:500",
        ),
      ),
    );
  }
}
