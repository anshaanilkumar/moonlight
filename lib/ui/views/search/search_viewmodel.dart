import 'package:stacked/stacked.dart';

class SearchViewModel extends BaseViewModel {
  List<String> _popularSearches = ['Bulbs', 'Bed Room', 'Table Lamps', 'LED', 'Laser', 'Fairy Lights'];
  List<String> get popularSearches => _popularSearches;

  List<Product> _products = [
    Product(name: 'Spherical Crystal Flush Mount Chandelier', color: 'Gold, beige', price: '15,000', imageUrl: 'your-image-url'),
    Product(name: 'Vintage Metal Cone Hanging Light', color: 'Black', price: '1,500', imageUrl: 'your-image-url'),
    Product(name: 'Colorful Rotatable Wall Light', color: 'Multiple', price: '900', imageUrl: 'your-image-url'),
  ];
  List<Product> get products => _products;

  void onSearchTap(String search) {
    notifyListeners();
  }
}

class Product {
  final String name;
  final String color;
  final String price;
  final String imageUrl;

  Product({required this.name, required this.color, required this.price, required this.imageUrl});
}
