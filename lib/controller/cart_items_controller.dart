import 'package:flutter/material.dart';
import 'package:flutter_basics/data/models/food_model.dart';

class CartItemsController extends ChangeNotifier {
  final List<FoodModel> _cartItems = [];
  List<FoodModel> get cartItems => _cartItems;
  void addToCart(FoodModel item) {
    if (!_cartItems.contains(item)) {
      _cartItems.add(item);
    }
    notifyListeners();
  }

  void removeFromCart(FoodModel item) {
    _cartItems.remove(item);
    notifyListeners();
  }

  void increaseQuantity(FoodModel item) {
    item.quantity++;
    notifyListeners();
  }

  void decreaseQuantity(FoodModel item) {
    if (item.quantity > 1) {
      item.quantity--;
      notifyListeners();
    }
  }

  void favoriteItem(FoodModel item) {
    item.isFavorite = !item.isFavorite;
    notifyListeners();
  }

  double get subTotal {
    double total = 0;
    for (var item in _cartItems) {
      total += item.price * item.quantity;
    }

    return total;
  }

  double get deliveryFee {
    return subTotal > 200 ? 0 : 20;
  }

  double get taxes {
    return subTotal * 0.14;
  }

  double get total {
    return subTotal + deliveryFee + taxes;
  }
}
