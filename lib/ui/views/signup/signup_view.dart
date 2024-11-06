import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'signup_viewmodel.dart';

class SignupView extends StackedView<SignupViewModel> {
  const SignupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SignupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: const Color(0xff183D3D),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Form(
            key: viewModel.formKey,
            child: Container(
              height: 1.sh, // Use ScreenUtil to set full screen height
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage("asset/images/img_3.png"), // Background image
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 20.h, // Use ScreenUtil for dynamic spacing
                    left: 20.w, // Use ScreenUtil for dynamic spacing
                    child: CircleAvatar(
                      radius: 28.r, // Use ScreenUtil for dynamic radius
                      backgroundColor: const Color(0xffD5E1DD),
                      child: IconButton(
                        onPressed: () {
                          viewModel.navigateToDet();
                        },
                        icon: Icon(
                          Icons.arrow_back_ios_new,
                          size: 25.sp, // Use ScreenUtil for dynamic icon size
                        ),
                        color: const Color(0xff183D3D),
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 100.h), // Use ScreenUtil for dynamic padding
                        child: Text(
                          'Create Account',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize:
                                28.sp, // Use ScreenUtil for dynamic font size
                            fontWeight: FontWeight.bold,
                            fontFamily: "Montserrat",
                            letterSpacing: 1,
                          ),
                        ),
                      ),
                      SizedBox(
                          height: 20.h), // Use ScreenUtil for dynamic spacing
                      Container(
                        height: 40.h, // Use ScreenUtil for dynamic height
                        width: 350.w, // Use ScreenUtil for dynamic width
                        decoration: BoxDecoration(
                          color: const Color(0xffD5E1DD).withOpacity(0.25),
                          borderRadius: BorderRadius.circular(
                              10.r), // Use ScreenUtil for dynamic border radius
                          border: Border.all(
                              width: 2.w,
                              color: const Color(
                                  0xffD5E1DD)), // Use ScreenUtil for dynamic border width
                        ),
                        child: TextFormField(
                          controller: viewModel.namectrlr,
                          decoration: InputDecoration(
                            hintText: 'Username',
                            hintStyle: TextStyle(
                              fontSize:
                                  12.sp, // Use ScreenUtil for dynamic font size
                              color: const Color(0xffD5E1DD),
                              fontFamily: "Montserrat",
                            ),
                            prefixIcon: const Icon(Icons.person_outline,
                                color: Colors.white),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                          height: 10.h), // Use ScreenUtil for dynamic spacing
                      Container(
                        height: 40.h, // Use ScreenUtil for dynamic height
                        width: 350.w, // Use ScreenUtil for dynamic width
                        decoration: BoxDecoration(
                          color: const Color(0xffD5E1DD).withOpacity(0.25),
                          borderRadius: BorderRadius.circular(
                              10.r), // Use ScreenUtil for dynamic border radius
                          border: Border.all(
                              width: 2.w,
                              color: const Color(
                                  0xffD5E1DD)), // Use ScreenUtil for dynamic border width
                        ),
                        child: TextFormField(
                          controller: viewModel.mblctrlr,
                          decoration: InputDecoration(
                            hintText: 'Mobile Number',
                            hintStyle: TextStyle(
                              fontSize:
                                  12.sp, // Use ScreenUtil for dynamic font size
                              color: const Color(0xffD5E1DD),
                              fontFamily: "Montserrat",
                            ),
                            prefixIcon: const Icon(Icons.phone_android_sharp,
                                color: Colors.white),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                          height: 10.h), // Use ScreenUtil for dynamic spacing
                      Container(
                        height: 40.h, // Use ScreenUtil for dynamic height
                        width: 350.w, // Use ScreenUtil for dynamic width
                        decoration: BoxDecoration(
                          color: const Color(0xffD5E1DD).withOpacity(0.25),
                          borderRadius: BorderRadius.circular(
                              10.r), // Use ScreenUtil for dynamic border radius
                          border: Border.all(
                              width: 2.w,
                              color: const Color(
                                  0xffD5E1DD)), // Use ScreenUtil for dynamic border width
                        ),
                        child: TextFormField(
                          controller: viewModel.emailctrl,
                          decoration: InputDecoration(
                            hintText: 'E-mail',
                            hintStyle: TextStyle(
                              fontSize:
                                  12.sp, // Use ScreenUtil for dynamic font size
                              color: const Color(0xffD5E1DD),
                              fontFamily: "Montserrat",
                            ),
                            prefixIcon: const Icon(Icons.alternate_email_sharp,
                                color: Colors.white),
                            border: InputBorder.none,
                          ),
                          validator: (String? value) {
                            String pattern =
                                r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                            RegExp regex = RegExp(pattern);
                            if (!regex.hasMatch(value!)) {
                              return 'Enter Valid Email';
                            } else {
                              return null;
                            }
                          },
                        ),
                      ),
                      SizedBox(
                          height: 10.h), // Use ScreenUtil for dynamic spacing
                      Container(
                        height: 40.h, // Use ScreenUtil for dynamic height
                        width: 350.w, // Use ScreenUtil for dynamic width
                        decoration: BoxDecoration(
                          color: const Color(0xffD5E1DD).withOpacity(0.25),
                          borderRadius: BorderRadius.circular(
                              10.r), // Use ScreenUtil for dynamic border radius
                          border: Border.all(
                              width: 2.w,
                              color: const Color(
                                  0xffD5E1DD)), // Use ScreenUtil for dynamic border width
                        ),
                        child: TextFormField(
                          controller: viewModel.pwdctrlr,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            hintStyle: TextStyle(
                              fontSize:
                                  12.sp, // Use ScreenUtil for dynamic font size
                              color: const Color(0xffD5E1DD),
                              fontFamily: "Montserrat",
                            ),
                            prefixIcon:
                                const Icon(Icons.lock, color: Colors.white),
                            suffixIcon: const Icon(
                                Icons.visibility_off_outlined,
                                color: Colors.white),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                          height: 10.h), // Use ScreenUtil for dynamic spacing
                      Container(
                        height: 40.h, // Use ScreenUtil for dynamic height
                        width: 350.w, // Use ScreenUtil for dynamic width
                        decoration: BoxDecoration(
                          color: const Color(0xffD5E1DD).withOpacity(0.25),
                          borderRadius: BorderRadius.circular(
                              10.r), // Use ScreenUtil for dynamic border radius
                          border: Border.all(
                              width: 2.w,
                              color: const Color(
                                  0xffD5E1DD)), // Use ScreenUtil for dynamic border width
                        ),
                        child: TextFormField(
                          controller: viewModel.cnfctrlr,
                          decoration: InputDecoration(
                            hintText: 'Confirm Password',
                            hintStyle: TextStyle(
                              fontSize:
                                  12.sp, // Use ScreenUtil for dynamic font size
                              color: const Color(0xffD5E1DD),
                              fontFamily: "Montserrat",
                            ),
                            prefixIcon:
                                const Icon(Icons.lock, color: Colors.white),
                            suffixIcon: const Icon(
                                Icons.visibility_off_outlined,
                                color: Colors.white),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      SizedBox(
                          height: 5.h), // Use ScreenUtil for dynamic spacing
                      Padding(
                        padding: EdgeInsets.only(
                            left: 45.w), // Use ScreenUtil for dynamic padding
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Transform.scale(
                                  scale: 1,
                                  child: Checkbox(
                                    value: viewModel.isChecked,
                                    onChanged: viewModel.toggleCheckbox,
                                    checkColor: Colors.black,
                                    fillColor: MaterialStateProperty
                                        .resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        return const Color(
                                            0xffC0CECE); // Unselected state color
                                      },
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(4.0
                                          .r), // Use ScreenUtil for dynamic border radius
                                    ),
                                  ),
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          'By continuing you are agree to',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Montserrat"),
                                        ),
                                        Text(
                                          ' Moonlits',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontFamily: "Montserrat",
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    const Text(
                                      'Privacy & Terms of service.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          height: 15.h), // Use ScreenUtil for dynamic spacing
                      SizedBox(
                        height: 50.h, // Use ScreenUtil for dynamic height
                        width: 260.w, // Use ScreenUtil for dynamic width
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "SINGUP",
                            style: TextStyle(
                              color: Color(0xff183D3D),
                              fontFamily: "Montserrat",
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              letterSpacing: 1,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            elevation: 6,
                            backgroundColor: const Color(0xffC0CECE),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0
                                  .r), // Use ScreenUtil for dynamic border radius
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                          height: 10.h), // Use ScreenUtil for dynamic spacing
                      Center(
                        child: Image.asset(
                          "asset/images/img_1.png",
                          height: 30.h, // Use ScreenUtil for dynamic height
                          width: 100.w, // Use ScreenUtil for dynamic width
                        ),
                      ),
                      SizedBox(
                          height: 5.h), // Use ScreenUtil for dynamic spacing
                      Center(
                        child: Image.asset(
                          "asset/images/img.png",
                          height: 30.h, // Use ScreenUtil for dynamic height
                          width: 100.w, // Use ScreenUtil for dynamic width
                        ),
                      ),
                      SizedBox(
                          height: 1.h), // Use ScreenUtil for dynamic spacing
                      Padding(
                        padding: EdgeInsets.only(
                            left: 85.w), // Use ScreenUtil for dynamic padding
                        child: Row(
                          children: [
                            const Text(
                              "Already have an account?",
                              style: TextStyle(
                                fontFamily: "Montserrat",
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                viewModel.navigateToDet();
                              },
                              child: const Text(
                                "Login",
                                style: TextStyle(
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  SignupViewModel viewModelBuilder(BuildContext context) => SignupViewModel();
}
