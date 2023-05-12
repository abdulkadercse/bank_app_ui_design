import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../style/style.dart';
class CustomFundWallet extends StatelessWidget {
  IconData icon;
  String text;
  Color iconColor;
  Color backgroundColor;
  CustomFundWallet(
      {super.key,
        required this.icon,
        required this.text,
        required this.iconColor,
        required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 43.w,
          height: 43.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: backgroundColor,
          ),
          child: Icon(
            icon,
            size: 18,
            color: iconColor,
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        Text(
          text,
          style: titleTextStyle.copyWith(
            color: Colors.black,
            fontSize: 14.sp,
          ),
        )
      ],
    );
  }
}