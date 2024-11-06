import 'package:stacked/stacked.dart';

class MyorderViewModel extends BaseViewModel {
  String _selectedCategory = 'Delivered';

  String get selectedCategory => _selectedCategory;

  void setSelectedCategory(String category) {
    _selectedCategory = category;
    notifyListeners();
  }

  List<Order> get orders => [
        Order(
          title: "Outdoor Wall Light HL-301",
          deliveryDate: "21 Nov 2024",
          imagePath: 'asset/images/img_23.png',
        ),
        Order(
          title: "Lotus Emerald Chandelier",
          deliveryDate: "23 Oct 2024",
          imagePath: 'asset/images/img_24.png',
        ),
        Order(
          title: "LED Auric Bonsai Tree Table Lamp",
          deliveryDate: "15 Jul 2024",
          imagePath: 'asset/images/img_25.png',
        ),
        Order(
          title: "Prima Facade Lights",
          deliveryDate: "10 Dec 2023",
          imagePath: 'asset/images/img_26.png',
        ),
      ];

  List<Cancel> get cancels => [
        Cancel(
            title: "Swan Hanging Lights",
            cancelledDate: "14 Jan, 2024",
            imagePath: 'asset/images/img_27.png'),
      ];

  List<Onprogress> get progress => [
        Onprogress(
            title: "Swan Hanging Lights",
            expected: "14 Jan, 2024",
            price: "26,000.00/-",
            imagePath: 'asset/images/img_28.png'),
      ];
}

class Order {
  final String title;
  final String deliveryDate;
  final String imagePath;

  Order({
    required this.title,
    required this.deliveryDate,
    required this.imagePath,
  });
}

class Cancel {
  final String title;
  final String cancelledDate;
  final String imagePath;

  Cancel({
    required this.title,
    required this.cancelledDate,
    required this.imagePath,
  });
}

class Onprogress {
  final String title;
  final String expected;
  final String price;
  final String imagePath;

  Onprogress({
    required this.title,
    required this.expected,
    required this.price,
    required this.imagePath,
  });
}
