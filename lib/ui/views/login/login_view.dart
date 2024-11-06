import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart'; // Import ScreenUtil

import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Color(0xff183D3D),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: viewModel.formKey,
            child: Container(
              height: 1.sh, // Use ScreenUtil for height
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage("asset/images/img_3.png"), // Background image
                  fit: BoxFit.fill,
                ),
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: 32.0.w), // Responsive padding
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 155.h), // Responsive padding
                    child: Text(
                      'Welcome Back!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.sp, // Responsive font size
                        fontFamily: "Montserrat",
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0.h), // Responsive height
                  Container(
                    height: 40.h, // Responsive height
                    width: 350.w, // Responsive width
                    decoration: BoxDecoration(
                        color: Color(0xffD5E1DD).withOpacity(0.25),
                        borderRadius: BorderRadius.circular(
                            10.r), // Responsive border radius
                        border: Border.all(width: 2, color: Color(0xffD5E1DD))),
                    child: TextFormField(
                      controller: viewModel.emailctrl,
                      decoration: InputDecoration(
                          hintText: 'Username/E-mail',
                          hintStyle: TextStyle(
                            fontSize: 12.0.sp, // Responsive font size
                            color: Color(0xffD5E1DD),
                            fontFamily: "Montserrat",
                          ),
                          prefixIcon:
                              Icon(Icons.person_outline, color: Colors.white),
                          border: InputBorder.none),
                      validator: (String? value) {
                        String pattern =
                            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                        RegExp regex = new RegExp(pattern);
                        if (!regex.hasMatch(value!))
                          return 'Enter Valid Email';
                        else
                          return null;
                      },
                    ),
                  ),
                  SizedBox(height: 10.0.h), // Responsive height
                  Container(
                    height: 40.h, // Responsive height
                    width: 350.w, // Responsive width
                    decoration: BoxDecoration(
                        color: Color(0xffD5E1DD).withOpacity(0.25),
                        borderRadius: BorderRadius.circular(
                            10.r), // Responsive border radius
                        border: Border.all(width: 2, color: Color(0xffD5E1DD))),
                    child: TextFormField(
                      controller: viewModel.pwdctrlr,
                      decoration: InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          fontSize: 12.0.sp, // Responsive font size
                          color: Color(0xffD5E1DD),
                          fontFamily: "Montserrat",
                        ),
                        prefixIcon: Icon(Icons.lock, color: Colors.white),
                        suffixIcon: Icon(Icons.visibility_off_outlined,
                            color: Colors.white),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Transform.scale(
                            scale: 1, // Responsive scale
                            child: Checkbox(
                              value: viewModel.isChecked,
                              onChanged: viewModel.toggleCheckbox,
                              checkColor: Colors.black,
                              fillColor:
                                  MaterialStateProperty.resolveWith<Color>(
                                (Set<MaterialState> states) {
                                  return const Color(
                                      0xffC0CECE); // Unselected state color
                                },
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    4.0.r), // Responsive border radius
                              ),
                            ),
                          ),
                          Text(
                            'Remember me',
                            style: TextStyle(
                                color: Colors.white, fontFamily: "Montserrat"),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.0.h), // Responsive height
                  SizedBox(
                    height: 50.h, // Responsive height
                    width: 200.w, // Responsive width
                    child: ElevatedButton(
                      onPressed: () {
                        viewModel.navigateDetails();
                      },
                      child: const Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Color(0xff183D3D),
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.bold,
                            fontSize: 18, // Responsive font size
                            letterSpacing: 1), // Responsive letter spacing
                      ),
                      style: ElevatedButton.styleFrom(
                          elevation: 6,
                          backgroundColor: Color(0xffC0CECE),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                10.0.r), // Responsive border radius
                          )),
                    ),
                  ),
                  SizedBox(height: 25.0.h), // Responsive height
                  Center(
                      child: Image.asset(
                    "asset/images/img_1.png",
                    height: 30.h, // Responsive height
                    width: 100.w, // Responsive width
                  )),
                  SizedBox(height: 20.0.h), // Responsive height
                  Center(
                      child: Image.asset(
                    "asset/images/img.png",
                    height: 30.h, // Responsive height
                    width: 100.w, // Responsive width
                  )),
                  SizedBox(height: 20.0.h), // Responsive height
                  Padding(
                      padding:
                          EdgeInsets.only(left: 75.w), // Responsive padding
                      child: Row(
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 10.sp, // Responsive font size
                                color: Colors.white),
                          ),
                          TextButton(
                              onPressed: () {
                                viewModel.navigateToDetails();
                              },
                              child: Text(
                                "Signup",
                                style: TextStyle(
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                    fontSize: 10.sp, // Responsive font size
                                    color: Colors.white),
                              ))
                        ],
                      )),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
