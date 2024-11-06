import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import '../../card/homeee/lightcard.dart';

class HomeViewModel extends BaseViewModel {
  final TextEditingController searchController = TextEditingController();
  final List<String> banners = [
    "asset/images/img_8.png",
    "asset/images/img_9.png",
    "asset/images/img_16.png",
  ];

  List<Widget> lightcards = [
    LightCategoryCard(
      imagePath: 'asset/images/img_5.png',
      title: 'Fairy Lights',
    ),
    LightCategoryCard(
      imagePath: 'asset/images/img_6.png',
      title: 'Chandeliers',
    ),
    LightCategoryCard(
      imagePath: 'asset/images/img_7.png',
      title: 'Outdoor',
    ),
    LightCategoryCard(
      imagePath: 'asset/images/img_5.png',
      title: 'Chandeliers',
    ),
    LightCategoryCard(
      imagePath: 'asset/images/img_6.png',
      title: 'Outdoor',
    ),
  ];

  // List of shop by room items (pairs of cards)
  final List<List<ShopByRoomItem>> shopByRoomItems = [
    [
      ShopByRoomItem(
          imagePath: 'asset/images/img_12.png', title: 'Living room'),
      ShopByRoomItem(
          imagePath: 'asset/images/img_13.png', title: 'Dining room'),
    ],
    [
      ShopByRoomItem(imagePath: 'asset/images/img_14.png', title: 'Bath room'),
      ShopByRoomItem(imagePath: 'asset/images/img_15.png', title: 'Kitchen'),
    ],
    // Add more pairs as needed
  ];

  // New field to manage the current index
  int _currentIndex = 0;
  int get currentIndex => _currentIndex;

  final PageController smothcntrl = PageController();

  void updateIndex(int index) {
    _currentIndex = index;
    notifyListeners();
  }

  @override
  void dispose() {
    smothcntrl.dispose();
    super.dispose();
  }
}

class ShopByRoomItem {
  final String imagePath;
  final String title;

  ShopByRoomItem({required this.imagePath, required this.title});
}
