import 'package:flutter/material.dart';
import 'package:userpaymentapp/ui/viewmodels/Homeviewmodel.dart';

class ToggleIcon extends StatefulWidget {
  const ToggleIcon({super.key, this.method});
  final String? method;
  @override
  State<ToggleIcon> createState() => _ToggleIconState();
}
class _ToggleIconState extends State<ToggleIcon> {
  final homestore = HomeStore();
   String? selectedMethod;
  // bool isToggled = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.method.toString()),
        GestureDetector(
            onTap: () {
              setState(() {
                homestore.istoggle();
                 if (homestore.toggle) {
                selectedMethod = widget.method;
                print(selectedMethod);
              }
              });
            },
            child: homestore.toggle
                ? const Icon(Icons.toggle_on, color: Colors.green, size: 60)
                : const Icon(Icons.toggle_off_sharp,
                    color: Colors.grey, size: 60)),
      ],
    );
  }
}
