import 'package:flutter/material.dart';
import 'package:stateful_task/customcart.dart';

class Home extends StatelessWidget {
  Home({super.key});
  List<CustomCart> items = [
    CustomCart(icon: Icons.watch, txt1: "Smart Watch", txt2: "\$450"),
    CustomCart(icon: Icons.headphones, txt1: "HeadPhone", txt2: "\$450"),
    CustomCart(icon: Icons.laptop, txt1: "LapTop", txt2: "\$450"),
    CustomCart(icon: Icons.camera, txt1: "Camera", txt2: "\$450"),

    CustomCart(icon: Icons.phone, txt1: "SmartPhone", txt2: "\$450"),

    CustomCart(icon: Icons.tablet, txt1: "Tablet", txt2: "\$450"),
  ];
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
      body: Center(
        child: Container(
          width: 600,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            itemCount: items.length,
            itemBuilder: (context, index) => CustomCart(
              icon: items[index].icon,
              txt1: items[index].txt1,
              txt2: items[index].txt2,
            ),
          ),
        ),
      ),
    );
  }
}
