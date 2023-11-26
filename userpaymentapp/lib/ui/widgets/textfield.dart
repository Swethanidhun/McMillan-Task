import 'package:flutter/material.dart';

class TextFields extends StatelessWidget {
  const TextFields({super.key, this.hinttext, this.icon, this.controllers});
  final String? hinttext;
  final Icon? icon;
  final TextEditingController? controllers;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: TextFormField(
        controller: controllers,
        decoration: InputDecoration(
            prefixIcon: icon,
            hintText: hinttext,
            hintStyle: const TextStyle(color: Colors.grey),
            border: const OutlineInputBorder(borderSide: BorderSide.none),
            filled: true,
            fillColor: Colors.white),
      ),
    );
  }
}
