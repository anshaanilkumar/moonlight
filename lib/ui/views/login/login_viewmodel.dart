import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  TextEditingController emailctrl = TextEditingController();
  TextEditingController pwdctrlr = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool isChecked = false;
  final _navigationService = StackedLocator.instance<NavigationService>();
  final _navigateService = StackedLocator.instance<NavigationService>();

  void navigateToDetails() {
    _navigationService.navigateTo('/signup-view');
  }

  void navigateDetails() {
    _navigateService.navigateTo('/bottom-navigation-view');
  }

  void toggleCheckbox(bool? value) {
    isChecked = value ?? false;
    notifyListeners();
  }
}
