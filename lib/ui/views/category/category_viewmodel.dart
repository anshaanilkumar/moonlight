import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

class CategoryViewModel extends BaseViewModel {
  final _navigationService = StackedLocator.instance<NavigationService>();
  void navigateToDet() {
    _navigationService.navigateTo('/search-view');
  }
}
