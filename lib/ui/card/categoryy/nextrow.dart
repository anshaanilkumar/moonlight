import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil

class Categoryfinal extends StatelessWidget {
  final String imagePath1;
  final String imagePath2;
  final String title1;
  final String title2;

  const Categoryfinal({
    Key? key,
    required this.imagePath1,
    required this.imagePath2,
    required this.title1,
    required this.title2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // First Image with bottom-left curve and title
        Container(
          height: 170.h, // Use ScreenUtil for height
          width: 152.w, // Use ScreenUtil for width
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0.r), // Square top-left corner
              topRight: Radius.circular(0.r), // Square top-right corner
              bottomLeft: Radius.circular(20.r), // Curved bottom-left corner
              bottomRight: Radius.circular(0.r), // Square bottom-right corner
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0.r),
              topRight: Radius.circular(0.r),
              bottomLeft: Radius.circular(20.r),
              bottomRight: Radius.circular(0.r),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagePath1),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        Colors.transparent, // Center color (transparent)
                        Colors.black12.withOpacity(
                            0.75), // Edge color (black with 75% opacity)
                      ],
                      stops: [0.0, 1.0],
                      center: Alignment.center,
                      radius: 0.9,
                      focal: Alignment.center,
                      focalRadius: 0.2,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      // gradient: LinearGradient(
                      //   colors: [
                      //     Colors.black.withOpacity(0.6), // Bottom color (black)
                      //     Colors.transparent, // Top color (transparent)
                      //   ],
                      //   begin: Alignment.bottomCenter,
                      //   end: Alignment.topCenter,
                      //   stops: [
                      //     0.0,
                      //     0.5
                      //   ], // Gradient starts at the bottom and transitions to the top
                      // ),
                      ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding:
                        EdgeInsets.all(3.0.w), // Use ScreenUtil for padding
                    child: Text(
                      title1,
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 14.sp, // Use ScreenUtil for font size
                        fontWeight: FontWeight.w600, // Font weight
                        fontStyle: FontStyle.italic, // Italic style
                        height: 19.5.sp /
                            16.sp, // Line height as a ratio of font size
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(width: 15.w), // Use ScreenUtil for spacing between images
        // Second Image with bottom-right curve and title
        Container(
          height: 170.h, // Use ScreenUtil for height
          width: 152.w, // Use ScreenUtil for width
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0.r), // Square top-left corner
              topRight: Radius.circular(0.r), // Square top-right corner
              bottomLeft: Radius.circular(0.r), // Square bottom-left corner
              bottomRight: Radius.circular(20.r), // Curved bottom-right corner
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(0.r),
              topRight: Radius.circular(0.r),
              bottomLeft: Radius.circular(0.r),
              bottomRight: Radius.circular(20.r),
            ),
            child: Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imagePath2),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      colors: [
                        Colors.transparent, // Center color (transparent)
                        Colors.black.withOpacity(
                            0.75), // Edge color (black with 75% opacity)
                      ],
                      stops: [0.0, 1.0],
                      center: Alignment.center,
                      radius: 0.7,
                      focal: Alignment.center,
                      focalRadius: 0.2,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      // gradient: LinearGradient(
                      //   colors: [
                      //     Colors.black.withOpacity(0.6), // Bottom color (black)
                      //     Colors.transparent, // Top color (transparent)
                      //   ],
                      //   begin: Alignment.bottomCenter,
                      //   end: Alignment.topCenter,
                      //   stops: [
                      //     0.0,
                      //     0.5
                      //   ], // Gradient starts at the bottom and transitions to the top
                      // ),
                      ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding:
                        EdgeInsets.all(3.0.w), // Use ScreenUtil for padding
                    child: Text(
                      title2,
                      style: GoogleFonts.montserrat(
                        color: Colors.white,
                        fontSize: 14.sp, // Use ScreenUtil for font size
                        fontWeight: FontWeight.w600, // Font weight
                        fontStyle: FontStyle.italic, // Italic style
                        height: 19.5.sp /
                            16.sp, // Line height as a ratio of font size
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
