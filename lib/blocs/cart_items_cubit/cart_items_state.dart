part of 'cart_items_cubit.dart';

class CartItemsState {
  CartItemsState({
    required this.cartItems,
    required this.subTotal,
    required this.deliveryFee,
    required this.taxes,
    required this.total,
    required this.ids,
  });
  List<FoodModel> cartItems;
  double subTotal;
  double deliveryFee;
  double taxes;
  double total;
  List<String> ids = [];

  CartItemsState copyWith({
    List<FoodModel>? cartItems,
    double? subTotal,
    double? deliveryFee,
    double? taxes,
    double? total,
    List<String>? ids,
  }) {
    return CartItemsState(
      cartItems: cartItems ?? this.cartItems,
      subTotal: subTotal ?? this.subTotal,
      deliveryFee: deliveryFee ?? this.deliveryFee,
      taxes: taxes ?? this.taxes,
      total: total ?? this.total,
      ids: ids ?? this.ids,
    );
  }

  factory CartItemsState.initial() {
    return CartItemsState(
      cartItems: [],
      subTotal: 0,
      deliveryFee: 0,
      taxes: 0,
      total: 0,
      ids: [],
    );
  }
}
