import 'package:flutter/material.dart';

class Custom_listtile extends StatefulWidget {
  final IconData icon;
  final String txt1;
  final String txt2;

  Custom_listtile({
    super.key,
    required this.icon,
    required this.txt1,
    required this.txt2,
  });

  @override
  State<Custom_listtile> createState() => _Custom_listtileState();
}

class _Custom_listtileState extends State<Custom_listtile> {
  int num = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: const Color.fromARGB(26, 233, 193, 236),
        width: 600,
        child: ListTile(
          leading: Icon(widget.icon),
          title: Text(widget.txt1),
          subtitle: Text(widget.txt2),
          trailing: Row(
            mainAxisSize: .min,
            spacing: 10,
            children: [
              GestureDetector(
                child: Text("+"),
                onTap: () {
                  setState(() {
                    num += 1;
                  });
                },
              ),
              Text("$num"),
              GestureDetector(
                child: Text("-"),
                onTap: () {
                  setState(() {
                    num -= 1;
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
