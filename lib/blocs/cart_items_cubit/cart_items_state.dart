part of 'cart_items_cubit.dart';

@immutable
sealed class CartItemsState {
  const CartItemsState();
}

final class CartItemsInitial extends CartItemsState {
  const CartItemsInitial();
}

final class CartItemsLoaded extends CartItemsState {
  final List<FoodModel> cartItems;
  final double subTotal;
  final double deliveryFee;
  final double taxes;
  final double total;

  const CartItemsLoaded({
    required this.cartItems,
    required this.subTotal,
    required this.deliveryFee,
    required this.taxes,
    required this.total,
  });
}
