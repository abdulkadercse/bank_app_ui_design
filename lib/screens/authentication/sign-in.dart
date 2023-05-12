import 'package:bank_app_ui_design/const/app_color.dart';
import 'package:bank_app_ui_design/screens/authentication/forgot_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import '../../style/style.dart';
import '../../widgets/custom_button.dart';
import '../Home Screen/Bottom Nav/bottom_nav.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 54.0, left: 35.0, right: 33.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  "assets/images/logo.png",
                  width: 94.w,
                  height: 86.h,
                ),
              ),
              SizedBox(
                height: 36.h,
              ),
              Center(
                child: Text(
                  "Welcome Back!",
                  style: titleTextStyle,
                ),
              ),
              SizedBox(
                height: 8.h,
              ),
              Center(
                  child: Text(
                "Enter your details to continue",
                style: subtitleTextStyle,
              )),
              SizedBox(
                height: 43.h,
              ),
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
                height: 18.h,
              ),
              Text(
                "Password",
                style: subtitleTextStyle.copyWith(
                  color: const Color(0xff969696),
                ),
              ),
              SizedBox(
                height: 7.h,
              ),
              AppTextField(
                textFieldType: TextFieldType.PASSWORD,
                decoration: appTextFieldDecoration.copyWith(
                  hintText: "Enter your password",
                  prefixIcon: const Icon(
                    Icons.lock_outline,
                  ),
                ),
              ),
              SizedBox(
                height: 13.h,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "Forgot Password?",
                  style: subtitleTextStyle.copyWith(
                      fontWeight: FontWeight.w400, color: AppColor.mainColor),
                ),
              ).onTap(() => const ForgotPassword().launch(context)),
              SizedBox(
                height: 16.h,
              ),
              const CustomButton(
                buttonText: 'Login',
              ).onTap(() => const NavBar().launch(context)),
              SizedBox(
                height: 27.h,
              ),
              const Center(
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: 'Need an Account?  '),
                      TextSpan(
                        text: ' Try Sutraq',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: AppColor.mainColor),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 64,
              ),
              Center(
                child: Image.asset(
                  "assets/images/fingerprint.png",
                  color: AppColor.mainColor,
                  width: 48.w,
                  height: 46,
                ),
              ),
              const SizedBox(
                height: 9,
              ),
              Center(
                child: Text(
                  "Tap to use fingerprint",
                  style: subtitleTextStyle.copyWith(
                    color: AppColor.mainColor,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
