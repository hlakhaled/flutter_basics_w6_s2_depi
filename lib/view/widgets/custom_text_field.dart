import 'package:flutter/material.dart';
import 'package:flutter_basics/core/utils/constants/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: Color(0xffFCECED),
        enabledBorder: outlineInputBorder(),
        filled: true,
        hintStyle: Styles.style14Regular,
        hintText: "Search for food",
        prefixIcon: Icon(Icons.search, color: Color(0xffE32D4A)),
        focusedBorder: outlineInputBorder(),
        border: outlineInputBorder(),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xffFCECED)),
      borderRadius: BorderRadius.circular(24),
    );
  }
}
