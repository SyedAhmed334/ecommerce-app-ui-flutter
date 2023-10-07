import 'package:flutter/foundation.dart';

import '../Models/cart.dart';

class CartProvider extends ChangeNotifier {
  final List<Cart> _cartItems = [];
  List<Cart> get cartItems => _cartItems;

  void addToCart(Cart cart) {
    _cartItems.add(cart);
    notifyListeners();
  }

  void removeCartItem(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }
}
