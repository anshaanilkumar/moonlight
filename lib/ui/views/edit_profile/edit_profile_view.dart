import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stacked/stacked.dart';

import '../../common/app_colors.dart';
import 'edit_profile_viewmodel.dart';

class EditProfileView extends StackedView<EditProfileViewModel> {
  const EditProfileView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    EditProfileViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        shadowColor: Colors.grey,
        leading: IconButton(
          onPressed: () {},
          icon:
              Icon(Icons.arrow_back_ios_new, size: 24), // Responsive icon size
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart_outlined,
                size: 24), // Responsive icon size
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 1),
              child: Container(
                // color: Colors.grey,
                height: 200.h,
                width: double.infinity,
                child: Column(
                  children: [
                    CircleAvatar(
                        radius: 60.r,
                        backgroundColor:
                            Colors.transparent, // Responsive radius
                        backgroundImage: const AssetImage(
                          "asset/images/img_4.png",
                        )),
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: Text(
                        "Edit Image",
                        style: GoogleFonts.montserrat(
                            fontSize: 10.sp,
                            color: appcolor,
                            fontWeight: FontWeight.w500),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: lightgreen,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.r))),
                      icon: Icon(
                        Icons.camera_alt,
                        size: 15,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 40.h,
                      child: Column(
                        children: [
                          Text(
                            'Abubakar',
                            style: GoogleFonts.montserrat(
                                textStyle:
                                    Theme.of(context).textTheme.displayLarge,
                                fontSize: 12.sp, // ScreenUtil applied here
                                color: Color(0xff183D3D)),
                          ),
                          Text(
                            'abubakarpopz@gmail.com',
                            style: GoogleFonts.montserrat(
                                textStyle:
                                    Theme.of(context).textTheme.displayLarge,
                                fontSize: 8.sp, // ScreenUtil applied here
                                color: Color(0xff183D3D)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Full Name",
                  style: GoogleFonts.montserrat(
                      fontSize: 10.sp,
                      color: Color(0xff878484),
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 35.h,
              width: 350.w,
              child: TextFormField(
                // controller: _nameController,
                cursorColor: appcolor,
                cursorHeight: 15.h,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    filled: true,
                    fillColor: lightgreen),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "E-mail",
                  style: GoogleFonts.montserrat(
                      fontSize: 10.sp,
                      color: Color(0xff878484),
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 35.h,
              width: 350.w,
              child: TextFormField(
                // controller: _nameController,
                cursorColor: appcolor,
                cursorHeight: 15.h,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    filled: true,
                    fillColor: lightgreen),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Contact Number",
                  style: GoogleFonts.montserrat(
                      fontSize: 10.sp,
                      color: Color(0xff878484),
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 35.h,
              width: 350.w,
              child: TextFormField(
                // controller: _nameController,
                cursorColor: appcolor,
                cursorHeight: 15.h,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    filled: true,
                    fillColor: lightgreen),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "State",
                  style: GoogleFonts.montserrat(
                      fontSize: 10.sp,
                      color: Color(0xff878484),
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 35.h,
              width: 350.w,
              child: TextFormField(
                // controller: _nameController,
                cursorColor: appcolor,
                cursorHeight: 15.h,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    filled: true,
                    fillColor: lightgreen),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "City",
                  style: GoogleFonts.montserrat(
                      fontSize: 10.sp,
                      color: Color(0xff878484),
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 35.h,
              width: 350.w,
              child: TextFormField(
                // controller: _nameController,
                cursorColor: appcolor,
                cursorHeight: 15.h,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(6.r),
                    ),
                    filled: true,
                    fillColor: lightgreen),
              ),
            ),
            SizedBox(
              height: 60.h,
            ),
            SizedBox(
              height: 35.h,
              width: 350.w,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Update",
                  style: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 16.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1),
                ),
                style: ElevatedButton.styleFrom(
                  elevation: 6,
                  backgroundColor: appcolor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        8.r), // Use ScreenUtil for dynamic border radius
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5.h,
            )
          ],
        ),
      ),
    );
  }

  @override
  EditProfileViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      EditProfileViewModel();
}
