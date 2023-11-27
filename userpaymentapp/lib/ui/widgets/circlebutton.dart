import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  CircleButton(
      {super.key,
      required this.height,
      required this.width,
      required this.icon,
      required this.onTap});
  final double height;
  final double width;
  final IconData icon;
  final void Function()? onTap;
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
                child: GestureDetector(
                  onTap:onTap ,
                  child: CircleAvatar(
                    maxRadius: 25,
                    backgroundColor: Colors.blue[300],
                    child: Icon(icon, color: Colors.white),
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
