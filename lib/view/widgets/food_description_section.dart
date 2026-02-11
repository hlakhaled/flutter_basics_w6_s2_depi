import 'package:flutter/material.dart';
import 'package:flutter_basics/core/utils/constants/styles.dart';

class FoodDescriptionSection extends StatelessWidget {
  const FoodDescriptionSection({super.key, required this.description});
  final String description;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Description", style: Styles.style20Bold),
        SizedBox(height: 8),
        SizedBox(
          width: 300,
          child: Text(
            description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: Styles.style12Regular.copyWith(color: Colors.grey[600]),
          ),
        ),
        SizedBox(height: 4),

        Text(
          "See more",
          style: Styles.style14Bold.copyWith(
            color: Colors.red[600],
            decoration: TextDecoration.underline,
            decorationColor: Colors.red[600],
          ),
        ),
      ],
    );
  }
}
