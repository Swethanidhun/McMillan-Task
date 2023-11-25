// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({
    Key? key,
    required this.isClear,
  }) : super(key: key);
  final bool isClear;
  @override
  Size get preferredSize => const Size.fromHeight(56.0);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Center(
          child: Text(
        "TODO",
        style: TextStyle(color: Colors.black),
      )),
      actions: [
        isClear == true 
        ?GestureDetector(
          onTap: () {
            
          },
          child: const Center(
              child: Text(
            "Clear",
            style: TextStyle(color: Colors.blue),
          )),
        )
        : const SizedBox()
      ],
      backgroundColor: Colors.white,
      elevation: 1,
    );
  }
}
