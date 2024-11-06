import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import '../../card/categoryy/item.dart';
import '../../card/categoryy/nextrow.dart';
import '../../card/categoryy/secrow.dart';
import '../../common/app_colors.dart';
import 'category_viewmodel.dart';

class CategoryView extends StackedView<CategoryViewModel> {
  CategoryView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    CategoryViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios_new,
          color: appcolor,
          size: 20.sp, // ScreenUtil applied here
        ),
        centerTitle: true,
        title: Text(
          "CATEGORY",
          style: GoogleFonts.montserrat(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 20.sp, // ScreenUtil applied here
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
        ),
        actions: [
          InkWell(
            child: Icon(
              Icons.search_outlined,
              color: appcolor,
              size: 25.sp, // ScreenUtil applied here
            ),
            onTap: () {
              viewModel.navigateToDet();
              // Implement search functionality here
            },
          ),
          SizedBox(width: 15.w), // ScreenUtil applied here
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                color: appcolor,
                height: 50.h, // ScreenUtil applied here
                child: Center(
                  child: Text(
                    'Home Decor',
                    style: GoogleFonts.montserrat(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 18.sp, // ScreenUtil applied here
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10.h), // Reduced space between widgets
              const Stack(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Categoryfitem(
                      imagePath: 'asset/images/img_17.png',
                      title: 'Hanging Lights',
                    ),
                  ],
                ),
              ]),
              SizedBox(
                height: 10.h,
              ), // Reduced space between widgets
              const Stack(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CategorySec(
                      imagePath: 'asset/images/img_18.png',
                      title: 'Wall Lights',
                    ),
                    CategorySec(
                      imagePath: 'asset/images/img_19.png',
                      title: 'Lamps',
                    ),
                  ],
                ),
              ]),
              SizedBox(height: 10.h), // Reduced space between widgets
              const Stack(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Categoryfinal(
                      imagePath1: 'asset/images/img_20.png',
                      imagePath2: 'asset/images/img_21.png',
                      title1: 'Mirror Lights',
                      title2: 'Fairy Lights',
                    ),
                  ],
                ),
              ]),
              SizedBox(height: 10.h), // Reduced space between widgets
              Container(
                color: appcolor,
                height: 50.h, // ScreenUtil applied here
                child: Center(
                  child: Text(
                    'Chandelier',
                    style: GoogleFonts.montserrat(
                        textStyle: Theme.of(context).textTheme.displayLarge,
                        fontSize: 18.sp, // ScreenUtil applied here
                        fontWeight: FontWeight.w600,
                        fontStyle: FontStyle.italic,
                        color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 10.h), // Reduced space between widgets
              const Stack(children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Categoryfitem(
                      imagePath: 'asset/images/img_22.png',
                      title: 'Fairy Lights',
                    ),
                  ],
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  @override
  CategoryViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      CategoryViewModel();
}
