import 'package:moonlightstack/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:moonlightstack/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:moonlightstack/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:moonlightstack/ui/views/login/login_view.dart';
import 'package:moonlightstack/ui/views/signup/signup_view.dart';
import 'package:moonlightstack/ui/views/profile/profile_view.dart';
import 'package:moonlightstack/ui/views/home/home_view.dart';
import 'package:moonlightstack/ui/views/changeaddress/changeaddress_view.dart';
import 'package:moonlightstack/ui/views/bottom_navigation/bottom_navigation_view.dart';
import 'package:moonlightstack/ui/views/category/category_view.dart';
import 'package:moonlightstack/ui/views/cartt/cartt_view.dart';
import 'package:moonlightstack/ui/views/address/address_view.dart';
import 'package:moonlightstack/ui/views/myorder/myorder_view.dart';
import 'package:moonlightstack/ui/views/edit_profile/edit_profile_view.dart';
import 'package:moonlightstack/ui/views/home_drawer/home_drawer_view.dart';
import 'package:moonlightstack/ui/views/search/search_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: StartupView),
    MaterialRoute(page: LoginView),
    MaterialRoute(page: SignupView),
    MaterialRoute(page: ProfileView),
    MaterialRoute(page: HomeView),
    MaterialRoute(page: ChangeaddressView),
    MaterialRoute(page: BottomNavigationView),
    MaterialRoute(page: CategoryView),
    MaterialRoute(page: CarttView),
    MaterialRoute(page: AddressView),
    MaterialRoute(page: MyorderView),
    MaterialRoute(page: EditProfileView),
    MaterialRoute(page: HomeDrawerView),
    MaterialRoute(page: SearchView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
