import 'package:flutter/foundation.dart';

class CartProvider with ChangeNotifier {
  final List<String> _cartItems = [];

  List<String> get cartItems => _cartItems;

  void addToCart(String product) {
    _cartItems.add(product);
    notifyListeners();
  }

  void removeFromCart(String product) {
    _cartItems.remove(product);
    notifyListeners();
  }
}
