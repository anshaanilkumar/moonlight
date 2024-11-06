import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stacked/stacked.dart';
import 'bottom_navigation_viewmodel.dart';

class BottomNavigationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<BottomNavigationViewModel>.reactive(
      viewModelBuilder: () => BottomNavigationViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          body: IndexedStack(
            index: viewModel.page,
            children: viewModel.pagelist,
          ),
          bottomNavigationBar: BottomNavigationBar(
            elevation: 10,
            backgroundColor: Color(0xFFD5E1DD),
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.red,
            items: [
              BottomNavigationBarItem(
                icon: _buildIcon(Icons.home, viewModel.page == 0),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(Icons.widgets_rounded, viewModel.page == 1),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(Icons.shopping_cart, viewModel.page == 2),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: _buildIcon(Icons.person, viewModel.page == 3),
                label: '',
              ),
            ],
            currentIndex: viewModel.page,
            onTap: viewModel.ontapchange,
          ),
        );
      },
    );
  }

  Widget _buildIcon(IconData icon, bool isSelected) {
    return Stack(
      alignment: Alignment.center,
      children: [
        if (isSelected)
          Container(
            width: 50.w,
            height: 50.w,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0xff183D3D),
            ),
          ),
        Icon(
          icon,
          color: isSelected ? Colors.white : Color(0xff183D3D),
          size: 24.sp,
        ),
      ],
    );
  }
}
