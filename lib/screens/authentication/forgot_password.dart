import 'package:bank_app_ui_design/screens/authentication/check_email.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../style/style.dart';
import '../../widgets/custom_back_arrow.dart';
import '../../widgets/custom_button.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const CustomBackArrow(),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 36, right: 33).w,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              width: 94.w,
              height: 86.h,
            ),
            SizedBox(
              height: 28.h,
            ),
            Text(
              "Forgot Password?",
              style: titleTextStyle,
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              "Enter the email address associated with your account to recover password.",
              style: subtitleTextStyle,
            ),
            SizedBox(
              height: 40.h,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email Address",
                  style: subtitleTextStyle.copyWith(
                    color: const Color(0xff969696),
                  ),
                ),
                SizedBox(
                  height: 7.h,
                ),
                AppTextField(
                  textFieldType: TextFieldType.EMAIL,
                  decoration: appTextFieldDecoration.copyWith(
                    hintText: "Enter your email address",
                    prefixIcon: const Icon(
                      Icons.email_outlined,
                    ),
                  ),
                ),
                SizedBox(
                  height: 43.h,
                ),
                const CustomButton(
                  buttonText: 'Recover Password',
                ).onTap(()=>const CheckEmail().launch(context)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
