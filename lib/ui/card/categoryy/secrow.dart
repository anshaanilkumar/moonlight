import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil

class CategorySec extends StatelessWidget {
  final String imagePath;
  final String title;

  const CategorySec({
    Key? key,
    required this.imagePath,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h, // Use ScreenUtil for height
      width: 149.w, // Use ScreenUtil for width
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            // bottomLeft: Radius.circular(20.r), // Optional: curved corners with ScreenUtil
            // bottomRight: Radius.circular(20.r), // Optional: curved corners with ScreenUtil
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
                  stops: [0.0, 1.0], // Gradient starts from center to edge
                  center: Alignment.center, // Center of the gradient
                  radius: 0.9, // Adjust the size of the radial gradient
                  focal: Alignment.center,
                  focalRadius: 0.2,
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
                    fontWeight: FontWeight.w600, // Adjusted font weight
                    fontStyle: FontStyle.italic, // Italic style
                    height: 19.5.sp / 16.sp, // Line height adjustment
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
