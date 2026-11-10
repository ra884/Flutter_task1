import 'package:flutter/material.dart';

class CustomCart extends StatefulWidget {
  final IconData icon;
  final String txt1;
  final String txt2;

  CustomCart({
    super.key,
    required this.icon,
    required this.txt1,
    required this.txt2,
  });

  @override
  State<CustomCart> createState() => _CustomCartState();
}

class _CustomCartState extends State<CustomCart> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        spacing: 10,
        crossAxisAlignment: .center,
        mainAxisAlignment: .center,
        children: [
          Icon(widget.icon),
          Text(widget.txt1),
          Text(widget.txt2),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: isClicked == false
                  ? const Color.fromARGB(255, 76, 133, 78)
                  : Colors.red,
            ),
            onPressed: () {
              setState(() {
                isClicked = !isClicked;
              });
            },
            child: Text(
              isClicked == false ? "Add to cart" : "Added",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
