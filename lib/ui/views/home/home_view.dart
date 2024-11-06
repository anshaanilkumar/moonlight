import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stacked/stacked.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../card/homeee/shopby_card.dart';
import '../../common/app_colors.dart'; // Ensure this path is correct
import '../home_drawer/home_drawer_view.dart';
import 'home_viewmodel.dart';
import 'package:badges/badges.dart' as badges;

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, viewModel, child) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            centerTitle: true,
            leading: Builder(
              builder: (context) {
                return InkWell(
                  child: Icon(Icons.menu_rounded, size: 35.sp, color: appcolor),
                  onTap: () {
                    Scaffold.of(context).openDrawer();
                  },
                );
              },
            ),
            title: Image.asset(
              "asset/images/img_11.png",
              color: appcolor,
              height: 25.h,
              width: 125.w,
            ),
            actions: [
              badges.Badge(
                badgeStyle: badges.BadgeStyle(
                  badgeColor: Colors.red,
                  padding: EdgeInsets.all(4.w),
                  borderRadius: BorderRadius.circular(8.r),
                  elevation: 1,
                ),
                position: badges.BadgePosition.topEnd(
                    top: 4.h, end: 3.w), // ScreenUtil applied here
                child: InkWell(
                  child: Icon(
                    Icons.notifications,
                    color: appcolor,
                    size: 25.sp, // ScreenUtil applied here
                  ),
                  onTap: () {
                    // Action for notifications
                  },
                ),
              ),
              SizedBox(width: 15.w), // ScreenUtil applied here
            ],
          ),
          drawer: HomeDrawerView(),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(16.w), // ScreenUtil applied here
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xffD5E1DD),
                      borderRadius: BorderRadius.circular(
                          15.r), // ScreenUtil applied here
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 8.w), // ScreenUtil applied here
                      child: TextField(
                        controller: viewModel.searchController,
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.sp), // ScreenUtil applied here
                        cursorColor: Colors.black,
                        decoration: InputDecoration(
                          hintText: 'Search',
                          hintStyle: TextStyle(
                            color: Colors.black54,
                            fontSize: 18.sp, // ScreenUtil applied here
                            fontFamily: "Sen",
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 14.h), // ScreenUtil applied here
                          prefixIcon: Icon(
                            Icons.search,
                            color: appcolor,
                            size: 35.sp, // ScreenUtil applied here
                          ),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              IconButton(
                                icon: Icon(Icons.mic,
                                    color: Colors.black54,
                                    size: 30.sp), // ScreenUtil applied here
                                onPressed: () {
                                  // Action for mic icon
                                },
                              ),
                              IconButton(
                                icon: Icon(Icons.camera_alt,
                                    color: Colors.black54,
                                    size: 30.sp), // ScreenUtil applied here
                                onPressed: () {
                                  // Action for camera icon
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 200.h, // ScreenUtil applied here
                  child: Center(
                    child: CarouselSlider.builder(
                      itemCount: viewModel.banners.length,
                      itemBuilder: (BuildContext context, int index,
                              int pageViewIndex) =>
                          Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(viewModel.banners[index]),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(
                              10.r), // ScreenUtil applied here
                        ),
                      ),
                      options: CarouselOptions(
                        height: 160.h, // ScreenUtil applied here
                        viewportFraction: 0.8,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        enlargeFactor: 0.3,
                        scrollDirection: Axis.horizontal,
                        onPageChanged: (index, reason) {
                          viewModel.updateIndex(index);
                        },
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h, // ScreenUtil applied here
                  child: Center(
                    child: AnimatedSmoothIndicator(
                      count: viewModel.banners.length,
                      axisDirection: Axis.horizontal,
                      effect: WormEffect(
                        radius: 6.r, // ScreenUtil applied here
                        dotWidth: 6.5.w, // ScreenUtil applied here
                        dotHeight: 6.5.h, // ScreenUtil applied here
                        spacing: 8.w, // ScreenUtil applied here
                        activeDotColor: appcolor,
                      ),
                      activeIndex: viewModel.currentIndex,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.w), // ScreenUtil applied here
                      child: Text(
                        "Explore",
                        style: GoogleFonts.montserrat(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 20.sp, // ScreenUtil applied here
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h), // ScreenUtil applied here
                Container(
                  color: Colors.grey,
                  height: 150.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: viewModel.lightcards.length,
                    itemBuilder: (BuildContext context, int index) {
                      return viewModel.lightcards[index];
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.w, top: 20.h), // ScreenUtil applied here
                      child: Text(
                        "Shop by Room",
                        style: GoogleFonts.montserrat(
                          textStyle: Theme.of(context).textTheme.displayLarge,
                          fontSize: 20.sp, // ScreenUtil applied here
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20.h), // ScreenUtil applied here
                ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: viewModel.shopByRoomItems.length,
                  itemBuilder: (context, index) {
                    final items = viewModel.shopByRoomItems[index];
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Shopbycard(
                            imagePath: items[0].imagePath,
                            title: items[0].title,
                          ),
                          Shopbycard(
                            imagePath: items[1].imagePath,
                            title: items[1].title,
                          ),
                        ],
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
