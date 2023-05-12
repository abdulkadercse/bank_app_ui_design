import 'package:bank_app_ui_design/const/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

final appTextFieldDecoration = InputDecoration(
  prefixIconColor: AppColor.mainColor,
  hintStyle: TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  ),
  border: const OutlineInputBorder(),
);
final titleTextStyle =TextStyle(
  fontSize: 30.sp,
  fontWeight: FontWeight.w600,
  color: AppColor.titleColor,
);

final subtitleTextStyle = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
    color: AppColor.subTitleColor);

