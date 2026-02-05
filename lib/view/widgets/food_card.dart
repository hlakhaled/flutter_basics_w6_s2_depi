import 'package:flutter/material.dart';
import 'package:flutter_basics/core/utils/constants/styles.dart';
import 'package:flutter_basics/data/models/special_offer_model.dart';

class FoodItemCard extends StatelessWidget {
  final SpecialOfferModel model;

  const FoodItemCard({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 0.75,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 5,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color(0xFFFFEBEE),
                  image: DecorationImage(
                    image: AssetImage(model.imagePath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 8),

            Text(
              model.title,
              style: Styles.style14Bold,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            Text(
              model.label,
              style: Styles.style14Regular,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),

            SizedBox(height: 14),

            Container(
              height: 36,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color(0xFFFFEBEE),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                "Add to cart",
                style: Styles.style12Medium.copyWith(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
