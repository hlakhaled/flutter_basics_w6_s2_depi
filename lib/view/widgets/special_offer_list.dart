import 'package:flutter/material.dart';
import 'package:flutter_basics/core/utils/constants/assets.dart';
import 'package:flutter_basics/data/models/special_offer_model.dart';
import 'package:flutter_basics/view/widgets/special_offer_card.dart';

class SpecialOfferList extends StatelessWidget {
  const SpecialOfferList({super.key});

  final List<SpecialOfferModel> specialOffers = const [
    SpecialOfferModel(
      title: 'Special Offer',
      label: 'NODE',
      imagePath: Assets.assetsImagesImg1,
    ),
    SpecialOfferModel(
      title: 'Free Delivery',
      label: 'On orders above \$20',
      imagePath: Assets.assetsImagesImg2,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: specialOffers.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(
              right: index == specialOffers.length - 1 ? 0 : 16,
            ),
            child: SpecialOfferCard(offerModel: specialOffers[index]),
          );
        },
      ),
    );
  }
}
