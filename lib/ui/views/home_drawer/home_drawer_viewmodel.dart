import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeDrawerViewModel extends BaseViewModel {
  // List<String> drawes = [
  //   "Profile",
  //   "Category",
  //   "Cart",
  //   "Wishlist",
  //   "Orders",
  //   "Notification",
  //   "Settings",
  //   "Help",
  //   "Logout"
  // ];

  List<Map<String, dynamic>> drawes = [
    {'icon': Icons.perm_identity, 'title': 'Profile'},
    {'icon': Icons.grid_view, 'title': 'Category'},
    {'icon': Icons.shopping_cart, 'title': 'Cart'},
    {'icon': Icons.favorite_border, 'title': 'Wishlist'},
    {'icon': Icons.check_box_outline_blank_sharp, 'title': 'Orders'},
    {'icon': Icons.notifications_none_sharp, 'title': 'Notifications'},
    {'icon': Icons.settings_outlined, 'title': 'Settings'},
    {'icon': Icons.question_mark_sharp, 'title': 'Help'},
    {'icon': Icons.logout, 'title': 'Logout'},
  ];

  final _navigationService = StackedLocator.instance<NavigationService>();
  void navigateToDetails(String title) {
    switch (title) {
      case "Profile":
        _navigationService.navigateTo('/edit-profile-view');
        break;
      case "Category":
        _navigationService.navigateTo('/myorder-view');
        break;
      case "Cart":
        _navigationService.navigateTo('/wishlist');
        break;
      case "Wishlist":
        _navigationService.navigateTo('/track-order');
        break;
      case "Orders":
        _navigationService.navigateTo('/cards-wallet');
        break;
      case "Notification":
        _navigationService.navigateTo('/my-reviews');
        break;
      case "Settings":
        _navigationService.navigateTo('/settings');
        break;
      case "Help":
        _navigationService.navigateTo('/help-center');
        break;
      case "Logout":
        _navigationService.navigateTo('/about');
        break;
      default:
        _navigationService.navigateTo('/default');
        break;
    }
  }
}
