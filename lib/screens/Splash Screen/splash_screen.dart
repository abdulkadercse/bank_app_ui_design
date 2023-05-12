import 'package:flutter/material.dart';
import '../Home Screen/Bottom Nav/bottom_nav.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../authentication/sign-in.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> goToHomeScreen() async {
    Future.delayed(const Duration(seconds: 5)).then((value) => {
          const SignIn().launch(context, isNewTask: true),
        });
  }

  @override
  void initState() {
    goToHomeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          "assets/images/logo.png",
          width: 118.w,
          height: 108.h,
        ),
      ),
    );
  }
}
