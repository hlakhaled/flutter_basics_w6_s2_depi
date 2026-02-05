import 'package:flutter/material.dart';
import 'package:flutter_basics/core/utils/constants/styles.dart';
import 'package:flutter_basics/data/models/special_offer_model.dart';

class SpecialOfferCard extends StatelessWidget {
  final SpecialOfferModel offerModel;

  static const double cardWidth = 300;
  static const double cardAspectRatio = 2 / 1;

  const SpecialOfferCard({super.key, required this.offerModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            SizedBox(
              width: cardWidth,
              child: AspectRatio(
                aspectRatio: cardAspectRatio,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(offerModel.imagePath),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 16,
              left: 16,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xffE32D4A),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 4,
                ),
                child: Text(offerModel.label, style: Styles.style12Medium),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(offerModel.title, style: Styles.style18Medium),
      ],
    );
  }
}
