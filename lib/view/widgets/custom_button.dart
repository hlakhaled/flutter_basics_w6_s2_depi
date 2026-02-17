import 'package:flutter/material.dart';
import 'package:flutter_basics/core/utils/constants/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text});

  final String text;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        margin: EdgeInsets.symmetric(vertical: 20),

        decoration: BoxDecoration(
          color: Colors.red[600],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            text,
            style: Styles.style18Bold.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
