import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_taxi/pages/onboarding_1.dart';
import 'package:my_taxi/pages/welcome_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: MaterialApp(
        theme: ThemeData(useMaterial3: true),
        themeMode: ThemeMode.light,
        darkTheme: ThemeData(useMaterial3: true),
        debugShowCheckedModeBanner: false,
        home: const Onboarding1(),
      ),
    );
  }
}
