import 'package:flutter/material.dart';
import '../style/style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomListTile extends StatelessWidget {
  IconData icon;
  Color backgroundColor;
  Color iconColor;
  String title;
  String subTitle;
  String tralingText;
  CustomListTile(
      {super.key,
        required this.icon,
        required this.backgroundColor,
        required this.iconColor,
        required this.title,
        required this.subTitle,
        required this.tralingText});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 24.w,
              height: 24.h,
              decoration: BoxDecoration(
                color: backgroundColor,
                shape: BoxShape.circle,
              ),
              child: Icon(
                icon,
                size: 14,
                color: iconColor,
              ),
            ),
            SizedBox(
              width: 13.w,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: titleTextStyle.copyWith(
                    fontSize: 14.sp,
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Text(
                  subTitle,
                  style: subtitleTextStyle.copyWith(
                    fontSize: 10.sp,
                  ),
                ),
              ],
            )
          ],
        ),
        Text(
          tralingText,
          style: titleTextStyle.copyWith(
            fontSize: 16.sp,
          ),
        )
      ],
    );
  }
}