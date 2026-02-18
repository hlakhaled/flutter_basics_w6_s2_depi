import 'package:bloc/bloc.dart';
import 'package:flutter_basics/data/models/food_model.dart';
import 'package:meta/meta.dart';

part 'cart_items_state.dart';

class CartItemsCubit extends Cubit<CartItemsState> {
  CartItemsCubit() : super(const CartItemsInitial());

  final List<FoodModel> _cartItems = [];

  List<FoodModel> get cartItems => List.unmodifiable(_cartItems);

  void addToCart(FoodModel item) {
    if (!_cartItems.contains(item)) {
      _cartItems.add(item);
    }
    _emitLoadedState();
  }

  void removeFromCart(FoodModel item) {
    _cartItems.remove(item);
    _emitLoadedState();
  }

  void increaseQuantity(FoodModel item) {
    item.quantity++;
    _emitLoadedState();
  }

  void decreaseQuantity(FoodModel item) {
    if (item.quantity > 1) {
      item.quantity--;
      _emitLoadedState();
    }
  }

  void _emitLoadedState() {
    final subTotal = _calculateSubTotal();
    final deliveryFee = subTotal > 200 ? 0.0 : 20.0;
    final taxes = subTotal * 0.14;
    final total = subTotal + deliveryFee + taxes;

    emit(
      CartItemsLoaded(
        cartItems: List.unmodifiable(_cartItems),
        subTotal: subTotal,
        deliveryFee: deliveryFee,
        taxes: taxes,
        total: total,
      ),
    );
  }

  double _calculateSubTotal() {
    double total = 0;
    for (var item in _cartItems) {
      total += item.price * item.quantity;
    }
    return total;
  }
  void favoriteItem(FoodModel item) {
    item.isFavorite = !item.isFavorite;
    _emitLoadedState();
  }
}
