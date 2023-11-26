import 'package:flutter/material.dart';
import 'package:userpaymentapp/ui/viewmodels/Homeviewmodel.dart';


class ToggleIcon extends StatefulWidget {
  const ToggleIcon({super.key,this.method});
final String? method;
  @override
  State<ToggleIcon> createState() => _ToggleIconState();
}

class _ToggleIconState extends State<ToggleIcon> {
    final homestore = HomeStore();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.method.toString()),
          GestureDetector(
              onTap: () {
                setState(() {
                  homestore.toggle;
                });
              },
              child: homestore.toggle
                  ? Icon(Icons.toggle_off_sharp, color: Colors.grey, size: 60)
                  : Icon(Icons.toggle_on, color: Colors.grey, size: 60)),
      ],
    );
  }
}
