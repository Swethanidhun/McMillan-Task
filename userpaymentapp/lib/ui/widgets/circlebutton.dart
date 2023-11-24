import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  CircleButton(
      {super.key,
      required this.height,
      required this.width,
      required this.icon});
  final double height;
  final double width;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: height, horizontal: width),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Material(
            child: Container(
                decoration:
                    const BoxDecoration(shape: BoxShape.circle, boxShadow: [
                  BoxShadow(blurRadius: 8, spreadRadius: 1, color: Colors.grey,)
                ]),
                child: CircleAvatar(
                  maxRadius: 28,
                  backgroundColor: Colors.blue[300],
                  child: Icon(icon, color: Colors.white),
                )),
          ),
        ],
      ),
    );
  }
}
