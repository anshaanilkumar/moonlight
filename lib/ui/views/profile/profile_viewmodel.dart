import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

class ProfileViewModel extends BaseViewModel {
  List<String> Titles = [
    "Edit Profile",
    "My Orders",
    "Wishlist",
    "Track Order",
    "Cards & Wallet",
    "My Reviews",
    "Settings",
    "Help Center",
    "About"
  ];
  bool isAccountSelected = true;
  void toggleSelection(bool isAccount) {
    isAccountSelected = isAccount;
    notifyListeners();
  }

  final _navigateService = StackedLocator.instance<NavigationService>();
  void navigateDetails() {
    _navigateService.navigateTo('/changeaddress-view');
  }

  final _navigationService = StackedLocator.instance<NavigationService>();
  void navigateToDetails(String title) {
    switch (title) {
      case "Edit Profile":
        _navigationService.navigateTo('/edit-profile-view');
        break;
      case "My Orders":
        _navigationService.navigateTo('/myorder-view');
        break;
      case "Wishlist":
        _navigationService.navigateTo('/wishlist');
        break;
      case "Track Order":
        _navigationService.navigateTo('/track-order');
        break;
      case "Cards & Wallet":
        _navigationService.navigateTo('/cards-wallet');
        break;
      case "My Reviews":
        _navigationService.navigateTo('/my-reviews');
        break;
      case "Settings":
        _navigationService.navigateTo('/settings');
        break;
      case "Help Center":
        _navigationService.navigateTo('/help-center');
        break;
      case "About":
        _navigationService.navigateTo('/about');
        break;
      default:
        _navigationService.navigateTo('/default');
        break;
    }
  }
}
