import 'package:bloc/bloc.dart';
import 'package:flutter_basics/data/models/food_model.dart';

part 'cart_items_state.dart';

class CartItemsCubit extends Cubit<CartItemsState> {
  CartItemsCubit() : super(CartItemsState.initial());

  int get cartItemsCount => state.cartItems.length;
  void addToCart(FoodModel item) {
    List<FoodModel> cartItems = List.from(state.cartItems);
    if (!cartItems.contains(item)) {
      cartItems.add(item);
    }
    _updateCart(cartItems);
  }

  void removeFromCart(FoodModel item) {
    List<FoodModel> cartItems = List.from(state.cartItems);
    cartItems.remove(item);
    _updateCart(cartItems);
  }

  void increaseQuantity(FoodModel item) {
    List<FoodModel> cartItems = List.from(state.cartItems);
    int index = cartItems.indexOf(item);
    cartItems[index].quantity++;
    _updateCart(cartItems);
  }

  void decreaseQuantity(FoodModel item) {
    List<FoodModel> cartItems = List.from(state.cartItems);
    int index = cartItems.indexOf(item);
    if (cartItems[index].quantity > 1) {
      cartItems[index].quantity--;
      _updateCart(cartItems);
    }
  }

  void _updateCart(List<FoodModel> cartItems) {
    double subTotal = 0;

    for (var item in cartItems) {
      subTotal += item.price * item.quantity;
    }

    double deliveryFee = subTotal > 200 ? 0 : 20;
    double taxes = subTotal * 0.14;
    double total = subTotal + deliveryFee + taxes;

    emit(
      state.copyWith(
        cartItems: cartItems,
        subTotal: subTotal,
        deliveryFee: deliveryFee,
        taxes: taxes,
        total: total,
      ),
    );
  }

  void favoriteItem(FoodModel item) {
    List<String> ids = List.from(state.ids);
    if (state.ids.contains(item.id)) {
      ids.remove(item.id);
      emit(state.copyWith(ids: ids));
    } else {
      ids.add(item.id);
      emit(state.copyWith(ids: ids));
    }
  }

  bool isFavourite(FoodModel item) {
    if (state.ids.contains(item.id)) {
      return true;
    }
    return false;
  }
}
