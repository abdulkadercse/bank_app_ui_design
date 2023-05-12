import 'package:flutter/material.dart';
import 'package:bank_app_ui_design/screens/Splash%20Screen/splash_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bank App UI Design',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Gelion",
        ),
        home: const SplashScreen(),
      );
    });
  }
}
