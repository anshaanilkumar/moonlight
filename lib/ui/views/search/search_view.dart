import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import 'search_viewmodel.dart';

class SearchView extends StackedView<SearchViewModel> {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SearchViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        centerTitle: true,
         title: Text("SEARCH"),
      ),
    body:   SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Container(
            height: 40.h,
            width: 340.w,
            decoration: BoxDecoration(
              borderRadius:
              BorderRadius.circular(5.r),
              border: Border.all(
                  width: 1.w,
                  color: appcolor),
            ),
            child: TextFormField(
              // controller: viewModel.mblctrlr,
              decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: appcolor,
                  size: 20.sp, // ScreenUtil applied here
                ),
                hintText: ' search...',
                hintStyle: GoogleFonts.montserrat(
                  textStyle: Theme.of(context).textTheme.displayLarge,
                  fontSize: 12.sp,
                  color: Colors.grey,
                ),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
    ),
    );
  }

  @override
  SearchViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SearchViewModel();
}
