import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LightCategoryCard extends StatelessWidget {
  final String imagePath;
  final String title;

  const LightCategoryCard({
    Key? key,
    required this.imagePath,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(9.0),
      child: Container(
        height: 120.h, // ScreenUtil applied here
        width: 110.w, // ScreenUtil applied here
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10.r), // ScreenUtil applied here
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.r), // ScreenUtil applied here
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
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft:
                          Radius.circular(20.r), // ScreenUtil applied here
                      bottomRight:
                          Radius.circular(20.r), // ScreenUtil applied here
                    ),
                  ),
                  padding: EdgeInsets.all(8.0.w), // ScreenUtil applied here
                  child: Text(
                    title,
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontSize: 13.sp, // ScreenUtil applied here
                      fontWeight: FontWeight.w600,
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
}
