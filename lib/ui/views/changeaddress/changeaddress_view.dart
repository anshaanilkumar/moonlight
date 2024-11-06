import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moonlightstack/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';

import 'changeaddress_viewmodel.dart';

class ChangeaddressView extends StackedView<ChangeaddressViewModel> {
  const ChangeaddressView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    ChangeaddressViewModel viewModel,
    Widget? child,
  ) {
    ScreenUtil.init(context,
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true);

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Add a new address",
                style: GoogleFonts.montserrat(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 12.sp, // ScreenUtil applied here
                    color: Color(0xff183D3D),
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 40.h,
                width: 340.w,
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(5.r), // ScreenUtil applied here
                  border: Border.all(
                      width: 1.w,
                      color: Colors.black), // ScreenUtil applied here
                ),
                padding: EdgeInsets.only(left: 8),
                child: TextFormField(
                  // controller: viewModel.mblctrlr,
                  decoration: InputDecoration(
                    hintText: 'Full Name *',
                    hintStyle: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 12.sp, // ScreenUtil applied here
                      color: Colors.black,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h, // ScreenUtil applied here
              ),
              Container(
                height: 40.h, // ScreenUtil applied here
                width: 340.w, // ScreenUtil applied here
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(5.r), // ScreenUtil applied here
                  border: Border.all(
                      width: 1.w,
                      color: Colors.black), // ScreenUtil applied here
                ),
                padding: EdgeInsets.only(left: 8),
                child: TextFormField(
                  // controller: viewModel.mblctrlr,
                  decoration: InputDecoration(
                    hintText: 'Phone Number *',
                    hintStyle: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 12.sp, // ScreenUtil applied here
                      color: Colors.black,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h, // ScreenUtil applied here
              ),
              Container(
                height: 80.h, // ScreenUtil applied here
                width: 340.w, // ScreenUtil applied here
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(5.r), // ScreenUtil applied here
                  border: Border.all(
                      width: 1.w,
                      color: Colors.black), // ScreenUtil applied here
                ),
                padding: EdgeInsets.only(left: 8),
                child: TextFormField(
                  // controller: viewModel.mblctrlr,
                  decoration: InputDecoration(
                    hintText: 'House No, Building Name *',
                    hintStyle: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 12.sp, // ScreenUtil applied here
                      color: Colors.black,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h, // ScreenUtil applied here
              ),
              Container(
                height: 80.h,
                width: 340.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.r),
                  border: Border.all(width: 1.w, color: Colors.black),
                ),
                padding: EdgeInsets.only(left: 8),
                child: TextFormField(
                  // controller: viewModel.mblctrlr,
                  decoration: InputDecoration(
                    hintText: 'Road Name, Area, Colony *',
                    hintStyle: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 12.sp, // ScreenUtil applied here
                      color: Colors.black,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h, // ScreenUtil applied here
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40.h, // ScreenUtil applied here
                        width: 150.w, // ScreenUtil applied here
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              5.r), // ScreenUtil applied here
                          border: Border.all(
                              width: 1.w,
                              color: Colors.black), // ScreenUtil applied here
                        ),
                        padding: EdgeInsets.only(left: 8),
                        child: TextFormField(
                          // controller: viewModel.mblctrlr,
                          decoration: InputDecoration(
                            hintText: 'State *',
                            hintStyle: GoogleFonts.montserrat(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 12.sp, // ScreenUtil applied here
                              color: Colors.black,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.w, // ScreenUtil applied here
                    ),
                    Expanded(
                      child: Container(
                        height: 40.h, // ScreenUtil applied here
                        width: 150.w, // ScreenUtil applied here
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              6.r), // ScreenUtil applied here
                          border: Border.all(
                              width: 1.w,
                              color: Colors.black), // ScreenUtil applied here
                        ),
                        padding: EdgeInsets.only(left: 8),
                        child: TextFormField(
                          // controller: viewModel.mblctrlr,
                          decoration: InputDecoration(
                            hintText: 'City *',
                            hintStyle: GoogleFonts.montserrat(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 12.sp, // ScreenUtil applied here
                              color: Colors.black,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h, // ScreenUtil applied here
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40.h, // ScreenUtil applied here
                        width: 150.w, // ScreenUtil applied here
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              6.r), // ScreenUtil applied here
                          border: Border.all(
                              width: 1.w,
                              color: Colors.black), // ScreenUtil applied here
                        ),
                        padding: EdgeInsets.only(left: 8),
                        child: TextFormField(
                          // controller: viewModel.mblctrlr,
                          decoration: InputDecoration(
                            hintText: 'Pin Code *',
                            hintStyle: GoogleFonts.montserrat(
                              textStyle:
                                  Theme.of(context).textTheme.displayLarge,
                              fontSize: 12.sp, // ScreenUtil applied here
                              color: Colors.black,
                            ),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 15.w, // ScreenUtil applied here
                    ),
                    Expanded(
                      child: Container(
                          height: 40.h, // ScreenUtil applied here
                          width: 150.w, // ScreenUtil applied here
                          decoration: BoxDecoration(
                            color: Color(0xff183D3D),
                            borderRadius: BorderRadius.circular(
                                5.r), // ScreenUtil applied here
                            border: Border.all(
                                width: 1.w,
                                color: Colors.black), // ScreenUtil applied here
                          ),
                          padding: EdgeInsets.only(left: 8),
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: Icon(
                              Icons.my_location_rounded,
                              size: 15.r,
                              color: Colors.white,
                            ),
                            label: Text(
                              "Use My Location",
                              style: GoogleFonts.montserrat(
                                  textStyle:
                                      Theme.of(context).textTheme.displayLarge,
                                  fontSize: 12.sp,
                                  color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff183D3D),
                            ),
                          )
                          // child: TextFormField(
                          //   // controller: viewModel.mblctrlr,
                          //   decoration: InputDecoration(
                          //     hintText: 'Use My Location',
                          //     hintStyle: GoogleFonts.montserrat(
                          //       textStyle: Theme.of(context).textTheme.displayLarge,
                          //       fontSize: 12.sp, // ScreenUtil applied here
                          //       color: Colors.black,
                          //     ),
                          //     border: InputBorder.none,
                          //   ),
                          // ),
                          ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 40.h, // ScreenUtil applied here
                width: 340.w, // ScreenUtil applied here
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(5.r), // ScreenUtil applied here
                  border: Border.all(
                      width: 1.w,
                      color: Colors.black), // ScreenUtil applied here
                ),
                padding: EdgeInsets.only(left: 8),
                child: TextFormField(
                  // controller: viewModel.mblctrlr,
                  decoration: InputDecoration(
                    hintText: 'Land mark *',
                    hintStyle: GoogleFonts.montserrat(
                      textStyle: Theme.of(context).textTheme.displayLarge,
                      fontSize: 12.sp, // ScreenUtil applied here
                      color: Colors.black,
                    ),
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Row(
                  children: [
                    Container(
                        height: 40.h, // ScreenUtil applied here
                        width: 80.w, // ScreenUtil applied here
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              8.r), // ScreenUtil applied here
                          border: Border.all(
                              width: 1.w,
                              color: Colors.black), // ScreenUtil applied here
                        ),
                        child: ElevatedButton.icon(
                          onPressed: viewModel.toggleHome,
                          icon: Icon(
                            Icons.home,
                            size: 15.r,
                            color: appcolor,
                          ),
                          label: Text(
                            "Home",
                            style: TextStyle(color: appcolor),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: viewModel.isHomeSelected
                                ? Color(0xffD5E1DD)
                                : Colors.white,
                            padding: EdgeInsets.symmetric(
                                vertical: 1,
                                horizontal: 1), // Responsive padding
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                                  8.0), // Responsive border radius
                            ),
                          ),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                        height: 40.h, // ScreenUtil applied here
                        width: 80.w, // ScreenUtil applied here
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                              8.r), // ScreenUtil applied here
                          border: Border.all(
                              width: 1.w,
                              color: Colors.black), // ScreenUtil applied here
                        ),
                        child: ElevatedButton.icon(
                          onPressed: viewModel.toggleOffice,
                          icon: Icon(
                            Icons.villa_sharp,
                            size: 15.r,
                            color: appcolor,
                          ),
                          label: Text(
                            "Office",
                            style: TextStyle(color: appcolor),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: viewModel.isOfficeSelected
                                ? Color(0xffD5E1DD)
                                : Colors.white,
                            padding: EdgeInsets.symmetric(
                                vertical: 1, horizontal: 1),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 40.h,
                width: 350.w,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Save Address",
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
                          10.r), // Use ScreenUtil for dynamic border radius
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  ChangeaddressViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      ChangeaddressViewModel();
}
