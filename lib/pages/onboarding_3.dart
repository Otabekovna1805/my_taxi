import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_taxi/constants/colors.dart';
import 'package:my_taxi/constants/fonts.dart';
import 'package:my_taxi/constants/images.dart';
import 'package:my_taxi/constants/strings.dart';
import 'package:my_taxi/pages/welcome_screen.dart';

class Onboarding3 extends StatelessWidget {
  const Onboarding3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        GestureDetector(
          onTap: () {},
          child: Text(
            Strings.skip,
            style: TextStyle(
                color: CustomColors.welcomeColor,
                fontSize: 16.sp,
                fontFamily: Fonts.poppins),
          ),
        ),
      ]),
      body: Column(
        children: [
          SizedBox(
            height: 80.sp,
          ),
          Image.asset(
            Images.onboarding3Image,
            height: 198.sp,
            width: 373.sp,
          ),
          SizedBox(
            height: 30.sp,
          ),
          const Text(
            Strings.bookYourCar,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 24,
                color: CustomColors.welcomeColor),
          ),
          SizedBox(
            height: 10.sp,
          ),
          const Text(
            Strings.sell,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: CustomColors.haveABetterColor),
          ),
          SizedBox(
            height: 160.sp,
          ),
          InkWell(
            borderRadius: BorderRadius.circular(80.sp),
            onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => WelcomeScreen())),
            child: const CircleAvatar(
              backgroundColor: CustomColors.buttonColor,
              radius: 35,
              child: Text(Strings.go, style: TextStyle(color: CustomColors.welcomeColor, fontSize: 20, fontWeight: FontWeight.w500, fontFamily: Fonts.poppins),)
            ),
          ),
        ],
      ),
    );
  }
}
