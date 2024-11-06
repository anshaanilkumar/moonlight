import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common/app_colors.dart';

class Categoryfitem extends StatelessWidget {
  final String imagePath;
  final String title;

  const Categoryfitem({
    Key? key,
    required this.imagePath,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h, // Use ScreenUtil for height
      width: 320.w, // Use ScreenUtil for width
      decoration: BoxDecoration(
        color: appcolor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r), // Use ScreenUtil for radius
          topRight: Radius.circular(20.r),
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r), // Use ScreenUtil for radius
          topRight: Radius.circular(20.r),
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Color.fromRGBO(0, 0, 0, 0), // Center color (transparent)
                    Color.fromRGBO(
                        0, 0, 0, 0.75), // Edge color (black with 75% opacity)
                  ],
                  stops: [0.0, 1.2],
                  center: Alignment.center,
                  radius: 0.9,
                  focal: Alignment.center,
                  focalRadius: 0.4,
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.transparent, // Starting color
                    Colors.black12.withOpacity(0.5), // Ending color
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.3], // Gradient stops at 50%
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.all(3.0.w), // Use ScreenUtil for padding
                child: Text(
                  title,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 14.sp, // Use ScreenUtil for font size
                    //fontWeight: FontWeight.bold,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic,
                    height: 19.5 / 16, // Line height as a ratio of font size
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
