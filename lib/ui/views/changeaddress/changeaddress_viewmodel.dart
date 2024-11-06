import 'package:stacked/stacked.dart';

class ChangeaddressViewModel extends BaseViewModel {
  bool isHomeSelected = false;
  bool isOfficeSelected = false;

  void toggleHome() {
    isHomeSelected = true;
    isOfficeSelected = false;
    notifyListeners();
  }

  void toggleOffice() {
    isHomeSelected = false;
    isOfficeSelected = true;
    notifyListeners();
  }
}
