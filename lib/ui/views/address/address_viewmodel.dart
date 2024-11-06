import 'package:stacked/stacked.dart';

class AddressViewModel extends BaseViewModel {
  final List<Map<String, String>> _addresses = [
    {
      'type': 'Home',
      'name': 'Abubakar',
      'address':
          'Alathoor House, Alathoor (p.o), opposite H&Y auditorium Alathoor center, Kerala, pin: 680243'
    },
    {
      'type': 'Office',
      'name': 'Abubakar',
      'address':
          'Happy Mart 123 Main Street, Palarivattom (p.o), Ernakulam, Kerala, PIN: 682017'
    },
  ];

  List<Map<String, String>> get addresses => _addresses;

  int _currentStep = 0;

  int get currentStep => _currentStep;

  void setStep(int step) {
    _currentStep = step;
    notifyListeners();
  }

  void addNewAddress(Map<String, String> newAddress) {
    _addresses.add(newAddress);
    notifyListeners();
  }

  void editAddress(int index, Map<String, String> updatedAddress) {
    _addresses[index] = updatedAddress;
    notifyListeners();
  }

  void navigateToNextStep() {
    if (_currentStep < 2) {
      _currentStep++;
      notifyListeners();
    }
  }

  void navigateToPreviousStep() {
    if (_currentStep > 0) {
      _currentStep--;
      notifyListeners();
    }
  }
}
