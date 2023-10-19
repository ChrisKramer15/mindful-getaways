import 'package:flutter/material.dart';
import 'package:getaways_flutter/assets/palette.dart';

class CustomTextfield extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const CustomTextfield(
      {super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: ColorPalette.lightAccent),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.green)),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.lightBlueAccent))),
    );
  }
}
