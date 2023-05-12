import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../style/style.dart';
import '../../widgets/custom_button.dart';

class CheckEmail extends StatelessWidget {
  const CheckEmail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffEFEEF2),
      body: Padding(
        padding: const EdgeInsets.only(left: 24.0, right: 19.0).w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 332.w,
              height: 448.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20).r,
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 40.0, right: 40.0).w,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20.h,
                    ),
                    Image.asset(
                      "assets/images/inbox.png",
                    ),
                    SizedBox(
                      height: 47.h,
                    ),
                    Text(
                      "Check your Inbox!",
                      style: titleTextStyle.copyWith(
                        fontSize: 27.sp,
                      ),
                    ),
                    SizedBox(
                      height: 13.h,
                    ),
                    Center(
                      child: Text(
                        "An email has been sent to you.Click the link to reset your password.",
                        style: subtitleTextStyle.copyWith(
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    const CustomButton(
                      buttonText: 'Check Mail',
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
