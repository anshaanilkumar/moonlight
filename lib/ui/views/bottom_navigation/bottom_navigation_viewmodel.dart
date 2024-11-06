import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';

import '../cartt/cartt_view.dart';
import '../category/category_view.dart';
import '../home/home_view.dart';
import '../profile/profile_view.dart';

class BottomNavigationViewModel extends BaseViewModel {
  int _page = 0;
  int get page => _page;
  // Getter for the selected page

  List<Widget> pagelist = [
    HomeView(),
    CategoryView(),
    CarttView(),
    ProfileView()
  ];

  void ontapchange(int index) {
    _page = index;
    notifyListeners();
  }
}
