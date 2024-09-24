import 'package:ecommerceapp/features/home/model/product_display_model.dart';
import 'package:flutter/material.dart';

class ResponsiveProvider extends ChangeNotifier {
  int wishlistCounter = 0;
  int cartCounter = 0;
  List<ProductDisplayItem> productsList = [];

  bool isLoading = false;
  // bool isFavorite = true;
  void getProducts() async {
    try {
      isLoading = true;
      productsList = [];
      notifyListeners();
    } catch (e) {
      debugPrint(e.toString());
    }
    isLoading = false;
    notifyListeners();
  }

  void increment() {
    wishlistCounter++;
    notifyListeners();
  }

  void decrement() {
    if (wishlistCounter > 0) {
      wishlistCounter--;
      notifyListeners();
    }
  }

  void toogleFavorite(ProductDisplayItem product) {
    productsList.add(product);

    // isFavorite = !isFavorite;
    notifyListeners();
  }
}
