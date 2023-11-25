import 'package:flutter/material.dart';

class ToggleIcon extends StatefulWidget {
  const ToggleIcon({super.key,this.method});
final String? method;
  @override
  State<ToggleIcon> createState() => _ToggleIconState();
}

class _ToggleIconState extends State<ToggleIcon> {
  @override
  Widget build(BuildContext context) {
    bool toggle = false;

    void istoggle() {
      toggle = !toggle;
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.method.toString()),
        GestureDetector(
            onTap: () {
              setState(() {
                istoggle();
              });
            },
            child: toggle
                ? Icon(Icons.toggle_off_sharp, color: Colors.grey, size: 60)
                : Icon(Icons.toggle_on, color: Colors.grey, size: 60)),
      ],
    );
  }
}
