import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moonlightstack/ui/common/app_colors.dart';
import 'package:stacked/stacked.dart';

import 'myorder_viewmodel.dart';

class MyorderView extends StackedView<MyorderViewModel> {
  const MyorderView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    MyorderViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text(
          "MY ORDERS",
          style: GoogleFonts.montserrat(
              textStyle: Theme.of(context).textTheme.displayLarge,
              fontSize: 12.sp,
              color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.shopping_cart_outlined),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                onPressed: () {
                  viewModel.setSelectedCategory('Delivered');
                },
                child: Text(
                  "Delivered",
                  style: GoogleFonts.montserrat(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 12.sp,
                    color: viewModel.selectedCategory == 'Delivered'
                        ? Colors.white
                        : appcolor,
                  ),
                ),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  backgroundColor: viewModel.selectedCategory == 'Delivered'
                      ? appcolor
                      : Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0.r),
                  ),
                  side: BorderSide(
                    color: appcolor,
                    width: 1.w,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  viewModel.setSelectedCategory('Cancelled');
                },
                child: Text(
                  "Cancelled",
                  style: GoogleFonts.montserrat(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 12.sp,
                    color: viewModel.selectedCategory == 'Cancelled'
                        ? Colors.white
                        : appcolor,
                  ),
                ),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  backgroundColor: viewModel.selectedCategory == 'Cancelled'
                      ? appcolor
                      : Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  side: BorderSide(
                    color: appcolor,
                    width: 1,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  viewModel.setSelectedCategory('On Progress');
                },
                child: Text(
                  "On Progress",
                  style: GoogleFonts.montserrat(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 12.sp,
                    color: viewModel.selectedCategory == 'On Progress'
                        ? Colors.white
                        : appcolor,
                  ),
                ),
                style: TextButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  backgroundColor: viewModel.selectedCategory == 'On Progress'
                      ? appcolor
                      : Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  side: BorderSide(
                    color: appcolor,
                    width: 1.w,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          if (viewModel.selectedCategory == 'Delivered')
            Expanded(
              child: ListView.builder(
                itemCount: viewModel.orders.length,
                itemBuilder: (context, index) {
                  final order = viewModel.orders[index];
                  return Container(
                    height: 80.h,
                    child: ListTile(
                      leading: SizedBox(
                          height: 120.h,
                          width: 60.w,
                          child: Image.asset(
                            order.imagePath,
                            fit: BoxFit.cover,
                          )),
                      title: Text(
                        'Delivered on ${order.deliveryDate}',
                        style: GoogleFonts.montserrat(
                            textStyle: Theme.of(context).textTheme.bodySmall,
                            fontSize: 12.sp,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            order.title,
                            style: GoogleFonts.montserrat(
                                textStyle:
                                    Theme.of(context).textTheme.bodyLarge,
                                fontSize: 10.sp,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          SizedBox(height: 4.h),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text(
                              "Rate & Review this Product",
                              style: GoogleFonts.montserrat(
                                  fontSize: 12.sp,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                            style: ElevatedButton.styleFrom(
                                backgroundColor: lightgreen,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.r))),
                          ),
                          SizedBox(
                            height: 5,
                          )
                        ],
                      ),
                      trailing: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.chevron_right,
                                size: 30,
                              )),
                        ],
                      ),
                      isThreeLine: true,
                      // contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
                    ),
                  );
                },
              ),
            ),
          if (viewModel.selectedCategory == 'Cancelled')
            Expanded(
              child: ListView.builder(
                itemCount: viewModel.cancels.length,
                itemBuilder: (context, index) {
                  final order = viewModel.cancels[index];
                  return ListTile(
                    leading: Image.asset(order.imagePath),
                    title: Text(
                      'Cancelled on ${order.cancelledDate}',
                      style: GoogleFonts.montserrat(
                          textStyle: Theme.of(context).textTheme.bodySmall,
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          order.title,
                          style: GoogleFonts.montserrat(
                              textStyle: Theme.of(context).textTheme.bodyLarge,
                              fontSize: 10.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 4.h),
                      ],
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.chevron_right,
                              size: 30,
                            )),
                      ],
                    ),
                    // isThreeLine: true,
                  );
                },
              ),
            ),
          if (viewModel.selectedCategory == 'On Progress')
            Expanded(
              child: ListView.builder(
                itemCount: viewModel.progress.length,
                itemBuilder: (context, index) {
                  final order = viewModel.progress[index];
                  return ListTile(
                    leading: Image.asset(order.imagePath),
                    title: Text(
                      'Delivered on ${order.expected}',
                      style: GoogleFonts.montserrat(
                          textStyle: Theme.of(context).textTheme.bodySmall,
                          fontSize: 12.sp,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          order.title,
                          style: GoogleFonts.montserrat(
                              textStyle: Theme.of(context).textTheme.bodyLarge,
                              fontSize: 10.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          "RS.${order.price}",
                          style: GoogleFonts.montserrat(
                              textStyle: Theme.of(context).textTheme.bodySmall,
                              fontSize: 10.sp,
                              color: Colors.black,
                              fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.chevron_right,
                              size: 30,
                            )),
                      ],
                    ),
                    isThreeLine: true,
                  );
                },
              ),
            ),
        ],
      ),
    );
  }

  @override
  MyorderViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      MyorderViewModel();
}
