import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moonlightstack/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';
import 'home_drawer_viewmodel.dart';

class HomeDrawerView extends StackedView<HomeDrawerViewModel> {
  const HomeDrawerView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeDrawerViewModel viewModel,
    Widget? child,
  ) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            height: 250.h,
            child: DrawerHeader(
              decoration: BoxDecoration(color: lightgreen),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Row(
                  children: [
                    CircleAvatar(
                        radius: 40,
                        backgroundColor:
                            Colors.transparent, // Responsive radius
                        backgroundImage: const AssetImage(
                          "asset/images/img_4.png",
                        )),
                    SizedBox(width: 5.w), // Spacing between avatar and text
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Abubakar',
                          style: GoogleFonts.montserrat(
                            fontSize: 10.sp, // Responsive font size
                            color: appcolor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 5.h), // Spacing between name and email
                        Text(
                          'abubakarpopz@gmail.com',
                          style: GoogleFonts.montserrat(
                            fontSize: 8.sp, // Responsive font size
                            color: appcolor,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.separated(
              itemCount: viewModel.drawes.length,
              itemBuilder: (BuildContext context, int index) {
                final item = viewModel.drawes[index];
                return ListTile(
                  leading: Icon(
                    item['icon'], // Use the icon from the map
                    size: 24.sp, // Responsive icon size
                    color: const Color(0xff183D3D),
                  ),
                  title: Text(
                    item['title'], // Use the title from the map
                    style: GoogleFonts.montserrat(
                      fontSize: 14.sp, // Responsive font size
                      color: const Color(0xff183D3D),
                    ),
                  ),
                  onTap: () {
                    viewModel.navigateToDetails(item['title']);
                    Navigator.pop(context); // Close the drawer after navigation
                  },
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  color: Colors.grey,
                  thickness: 1,
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  HomeDrawerViewModel viewModelBuilder(BuildContext context) =>
      HomeDrawerViewModel();
}

//           Expanded(
//             child: ListView.separated(
//               padding: EdgeInsets.zero,
//               itemCount: 9,
//               itemBuilder: (context, index) {
//                 List<Map<String, dynamic>> drawerItems = [
//                   {'icon': Icons.perm_identity, 'title': 'Profile'},
//                   {'icon': Icons.grid_view, 'title': 'Category'},
//                   {'icon': Icons.shopping_cart, 'title': 'Cart'},
//                   {'icon': Icons.favorite_border, 'title': 'Wishlist'},
//                   {'icon': Icons.check_box_outline_blank_sharp, 'title': 'Orders'},
//                   {'icon': Icons.notifications_none_sharp, 'title': 'Notifications'},
//                   {'icon': Icons.settings_outlined, 'title': 'Settings'},
//                   {'icon': Icons.question_mark_sharp, 'title': 'Help'},
//                   {'icon': Icons.logout, 'title': 'Logout'},
//                 ];
//
//                 return _drawerItem(drawerItems[index]['icon'], drawerItems[index]['title'], context);
//               },
//               separatorBuilder: (context, index) {
//                 return Divider(
//                   color: Colors.grey,
//                   thickness: 1,
//                 );
//               },
//             ),
//           )
//         ],
//       ),
//     );
//   }
//
//   Widget _drawerItem(IconData icon, String title, BuildContext context) {
//     return ListTile(
//       leading: Icon(icon, color: Colors.black, size: 15.sp), // Icon styling
//       title: Text(
//         title,
//         style: GoogleFonts.montserrat(
//           fontSize: 12.sp, // Responsive font size
//           color: Colors.black,
//           fontWeight: FontWeight.w500
//         ),
//       ),
//       onTap: () {
//         viewModel.navigateToDetails(title);
//       },
//     );
//   }
//
//   @override
//   HomeDrawerViewModel viewModelBuilder(BuildContext context) =>
//       HomeDrawerViewModel();
// }

//           Expanded(
//             child: ListView.builder(
//               itemCount: viewModel.drawes.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return ListTile(
//                   title: Text(
//                     viewModel.drawes[index],
//                     style: GoogleFonts.montserrat(
//                       textStyle: Theme.of(context).textTheme.displayLarge,
//                       fontSize: 8.sp,
//                       color: Colors.black,
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
