import 'package:flutter_basics/core/utils/constants/assets.dart';

class FoodModel {
  final String id;
  final String title;
  final String label;
  final String imagePath;
  final String size;
  final double price;
  final double rating;
  final int reviewsCount;
  final int time;
  final int kcal;
  final String description;
  int quantity;
  bool isFavorite;

  FoodModel({
    this.id = '',
    this.title = '',
    this.label = '',
    this.size = '',
    this.imagePath = '',
    this.price = 0.0,
    this.rating = 0.0,
    this.reviewsCount = 0,
    this.time = 0,
    this.kcal = 0,
    this.description = '',
    this.quantity = 1,
    this.isFavorite = false,
  });

  static List<FoodModel> featuredFoods = [
    FoodModel(
      id: 'f1',
      title: "Burger Combo",
      label:
          "Juicy beef patty with fresh lettuce, tomato, and signature sauce.",
      imagePath: Assets.assetsImagesImg6,
      rating: 4.5,
      time: 20,
      kcal: 500,
      description:
          "Our Burger Combo features a juicy beef patty cooked to perfection, layered with fresh lettuce, ripe tomatoes, pickles, and our signature sauce, served with golden fries and a refreshing drink. Perfect for a satisfying meal any time of the day.",
      price: 12.99,
      reviewsCount: 150,
      size: "Large",
    ),
    FoodModel(
      id: 'f2',
      title: "Pepperoni Pizza",
      label: "Loaded with spicy pepperoni and melted mozzarella cheese.",
      imagePath: Assets.assetsImagesImg4,
      rating: 4.2,
      time: 25,
      kcal: 600,
      description:
          "This classic Pepperoni Pizza is topped with generous slices of spicy pepperoni and melted mozzarella cheese on a crispy, golden crust. Finished with a hint of oregano, it's a favorite for pizza lovers craving bold flavors.",
      price: 10.99,
      reviewsCount: 120,
      size: "Medium",
    ),
    FoodModel(
      id: 'f3',
      title: "Double Cheese",
      label: "Two beef patties with extra melted cheddar and pickles.",
      imagePath: Assets.assetsImagesImg8,
      rating: 4.0,
      time: 22,
      kcal: 550,
      description:
          "Double the patties, double the flavor! Our Double Cheese burger comes with two juicy beef patties, extra melted cheddar, fresh pickles, lettuce, tomato, and our special sauce. A hearty option for true burger enthusiasts.",
      price: 11.99,
      reviewsCount: 100,
      size: "Large",
    ),
    FoodModel(
      id: 'f4',
      title: "Margherita Pizza",
      label: "Simple and delicious with fresh basil, tomato, and olive oil.",
      imagePath: Assets.assetsImagesImg5,
      rating: 4.3,
      time: 18,
      kcal: 450,
      description:
          "The classic Margherita Pizza is a celebration of simplicity. Fresh tomatoes, basil leaves, and mozzarella are drizzled with extra virgin olive oil on a thin, crispy crust. A timeless favorite for those who enjoy authentic Italian flavors.",
      price: 9.99,
      reviewsCount: 90,
      size: "Medium",
    ),
    FoodModel(
      id: 'f5',
      title: "Chicken Crispy",
      label: "Golden fried chicken breast with spicy mayo and slaw.",
      imagePath: Assets.assetsImagesImg7,
      rating: 4.1,
      time: 20,
      kcal: 480,
      description:
          "Our Chicken Crispy features tender chicken breast, golden fried to perfection. Served with a spicy mayo sauce, fresh coleslaw, and a side of crispy fries, this dish delivers a satisfying crunch and a punch of flavor in every bite.",
      price: 11.49,
      reviewsCount: 110,
      size: "Small",
    ),
    FoodModel(
      id: 'f6',
      title: "BBQ Chicken Pizza",
      label: "Grilled chicken, red onions, and smoky BBQ sauce topping.",
      imagePath: Assets.assetsImagesImg14,
      rating: 4.4,
      time: 25,
      kcal: 550,
      description:
          "Our BBQ Chicken Pizza combines grilled chicken, tangy BBQ sauce, red onions, and melted mozzarella cheese on a perfectly baked crust. The smoky, savory flavors make it an irresistible choice for pizza lovers seeking something unique.",
      price: 12.49,
      reviewsCount: 130,
      size: "Medium",
    ),
    FoodModel(
      id: 'f7',
      title: "Mushroom Swiss",
      label: "Beef patty topped with sautéed mushrooms and Swiss cheese.",
      imagePath: Assets.assetsImagesImage13,
      rating: 4.2,
      time: 22,
      kcal: 520,
      description:
          "The Mushroom Swiss burger is a gourmet delight with a juicy beef patty topped with sautéed mushrooms, creamy Swiss cheese, fresh lettuce, and our signature sauce. Perfectly balanced flavors that satisfy your taste buds with every bite.",
      price: 11.99,
      reviewsCount: 95,
      size: "Large",
    ),
    FoodModel(
      id: 'f8',
      title: "Veggie Supreme",
      label: "A mix of bell peppers, olives, onions, and mushrooms.",
      imagePath: Assets.assetsImagesImg15,
      rating: 4.0,
      time: 20,
      kcal: 480,
      description:
          "The Veggie Supreme pizza is loaded with colorful bell peppers, olives, onions, mushrooms, and melted mozzarella on a crispy crust. A fresh, flavorful option for vegetarians or anyone who loves a vibrant, veggie-packed meal.",
      price: 10.99,
      reviewsCount: 85,
      size: "Medium",
    ),
  ];
}
