
class FoodModel {
  final String title;
  final String label; 
  final String imagePath;
  final double price;
  final double rating;
  final int reviewsCount;
  final int time;
  final int kcal;
  final String description; 


  const FoodModel({
    required this.title,
    required this.label,
    required this.imagePath,
    required this.price,
    required this.rating,
    required this.reviewsCount,
    required this.time,
    required this.kcal,
    required this.description,

  });
}
