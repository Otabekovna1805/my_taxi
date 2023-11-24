import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_taxi/constants/colors.dart';
import 'package:my_taxi/constants/fonts.dart';
import 'package:my_taxi/constants/images.dart';
import 'package:my_taxi/constants/strings.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.sp, vertical: 20.sp),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02.sp,),
            Transform.scale(scale: 0.9,child: Image.asset(Images.welcomeScreenImage),),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.02.sp,),
            const Text(Strings.welcome, style: TextStyle(fontSize: 24, color: CustomColors.welcomeColor, fontFamily: Fonts.poppins),),
            SizedBox(height: 5.sp,),
            const Text(Strings.haveABetter, style: TextStyle(fontSize: 16, color: CustomColors.haveABetterColor, fontFamily: Fonts.poppins),),
            SizedBox(height: MediaQuery.sizeOf(context).height * 0.28.sp,),
            Container(
              alignment: Alignment.center,
              height: 54.sp,
              width: 362.sp,
              decoration: BoxDecoration(
                color: CustomColors.yellow,
                borderRadius: BorderRadius.all(Radius.circular(8.sp))
              ),
              child: const Text(Strings.create, style: TextStyle(fontSize: 16, fontFamily: "Poppins", color: Colors.white, fontWeight: FontWeight.w500),),
            ),

            SizedBox(height: MediaQuery.sizeOf(context).height * 0.008.sp,),

            Container(
              alignment: Alignment.center,
              height: 54.sp,
              width: 362.sp,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.sp)),
                border: Border.all(color: CustomColors.yellow)
              ),
              child: const Text(Strings.logIn, style: TextStyle(fontSize: 16, fontFamily: "Poppins", color: CustomColors.yellow, fontWeight: FontWeight.w500),),
            ),

          ],
        ),
      ),
    );
  }
}
