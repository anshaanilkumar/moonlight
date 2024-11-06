import 'package:flutter/cupertino.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

class SignupViewModel extends BaseViewModel {
  TextEditingController namectrlr = TextEditingController();
  TextEditingController mblctrlr = TextEditingController();
  TextEditingController emailctrl = TextEditingController();
  TextEditingController pwdctrlr = TextEditingController();
  TextEditingController cnfctrlr = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final _navigationService = StackedLocator.instance<NavigationService>();

  bool isChecked = false;

  void toggleCheckbox(bool? value) {
    isChecked = value ?? false;
    notifyListeners();
  }

  void navigateToDet() {
    _navigationService.navigateTo('/login-view');
  }
}
