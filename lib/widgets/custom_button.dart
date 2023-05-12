import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../const/app_color.dart';
class CustomButton extends StatelessWidget {
  final String buttonText;
  const CustomButton({
    super.key,
    required this.buttonText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 61.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3).r, color: AppColor.mainColor),
      child: Center(
          child: Text(
            buttonText,
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 16.sp, color: Colors.white),
          )),
    );
  }
}