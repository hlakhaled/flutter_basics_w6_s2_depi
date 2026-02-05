import 'package:flutter/material.dart';
import 'package:flutter_basics/core/utils/constants/assets.dart';
import 'package:flutter_basics/data/models/special_offer_model.dart';
import 'package:flutter_basics/view/widgets/food_card.dart';

class FeaturedItemsList extends StatelessWidget {
  const FeaturedItemsList({super.key});

  final List<SpecialOfferModel> featuredItems = const [
    SpecialOfferModel(
      title: "Burger Combo",
      label:
          "Juicy beef patty with fresh lettuce, tomato, and signature sauce.",
      imagePath: Assets.assetsImagesImg6,
    ),
    SpecialOfferModel(
      title: "Pepperoni Pizza",
      label: "Loaded with spicy pepperoni and melted mozzarella cheese.",
      imagePath: Assets.assetsImagesImg4,
    ),
    SpecialOfferModel(
      title: "Double Cheese",
      label: "Two beef patties with extra melted cheddar and pickles.",
      imagePath: Assets.assetsImagesImg8,
    ),
    SpecialOfferModel(
      title: "Margherita Pizza",
      label: "Simple and delicious with fresh basil, tomato, and olive oil.",
      imagePath: Assets.assetsImagesImg5,
    ),
    SpecialOfferModel(
      title: "Chicken Crispy ",
      label: "Golden fried chicken breast with spicy mayo and slaw.",
      imagePath: Assets.assetsImagesImg7,
    ),
    SpecialOfferModel(
      title: "BBQ Chicken Pizza",
      label: "Grilled chicken, red onions, and smoky BBQ sauce topping.",
      imagePath: Assets.assetsImagesImg14,
    ),
    SpecialOfferModel(
      title: "Mushroom Swiss ",
      label: "Beef patty topped with sautéed mushrooms and Swiss cheese.",
      imagePath: Assets.assetsImagesImage13,
    ),
    SpecialOfferModel(
      title: "Veggie Supreme ",
      label: "A mix of bell peppers, olives, onions, and mushrooms.",
      imagePath: Assets.assetsImagesImg15,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: featuredItems.length,
        padding: const EdgeInsets.symmetric(horizontal: 4),
        separatorBuilder: (_, __) => const SizedBox(width: 16),
        itemBuilder: (context, index) {
          return SizedBox(child: FoodItemCard(model: featuredItems[index]));
        },
      ),
    );
  }
}
