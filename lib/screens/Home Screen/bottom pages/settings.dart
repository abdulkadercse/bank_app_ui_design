import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../const/app_color.dart';
import '../../../style/style.dart';
import '../../../widgets/custom_list_title.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _bool = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff08083D),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "Account Settings",
          style: titleTextStyle.copyWith(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 43.h,),
            ListTile(
              leading: Container(
                width: 51.w,
                height: 51.h,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(colors: [
                    Color(0xff3417A8),
                    Color(0xff4E17A8),
                  ]),
                ),
                child: Center(
                    child: Text(
                  "OP",
                  style: subtitleTextStyle.copyWith(color: Colors.white),
                )),
              ),
              title: Text(
                "Ogar Precious",
                style: titleTextStyle.copyWith(
                    fontSize: 14.sp, color: Colors.white),
              ),
              subtitle: Text(
                "Su/Pre123",
                style: subtitleTextStyle.copyWith(fontSize: 11.sp),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 33.h,
            ),
            Container(
              width: 351.w,
              height: 800.h,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  color: Colors.white),
              child: Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 18.0, right: 20.0).w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 36.h,
                    ),
                    Text(
                      "GENERAL",
                      style: subtitleTextStyle.copyWith(
                          fontSize: 10.sp,
                          color: const Color(0xff7E7E7E),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    const Divider(
                      color: AppColor.dividerColor,
                      thickness: 1.3,
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    CustomSettingPage(
                      text: 'Bank Accounts',
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    const Divider(
                      color: AppColor.dividerColor,
                      thickness: 1.3,
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    CustomSettingPage(
                      text: 'My Cards',
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    const Divider(
                      color: AppColor.dividerColor,
                      thickness: 1.3,
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    CustomSettingPage(
                      text: 'Change Transaction Pin',
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    const Divider(
                      color: AppColor.dividerColor,
                      thickness: 1.3,
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    CustomSettingPage(
                      text: 'Security',
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    const Divider(
                      color: AppColor.dividerColor,
                      thickness: 1.3,
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    CustomSettingPage(
                      text: 'Documents',
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    const Divider(
                      color: AppColor.dividerColor,
                      thickness: 1.3,
                    ),
                    SizedBox(
                      height: 33.h,
                    ),
                    Text(
                      "PREFERENCES",
                      style: subtitleTextStyle.copyWith(
                          fontSize: 10.sp,
                          color: const Color(0xff7E7E7E),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    const Divider(
                      color: AppColor.dividerColor,
                      thickness: 1.3,
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    CustomSettingPage(
                      text: 'Invite Your Friends',
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    const Divider(
                      color: AppColor.dividerColor,
                      thickness: 1.3,
                    ),
                    SizedBox(
                      height: 11.h,
                    ),
                    CustomSettingPage(
                      text: 'Report a Bug',
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    const Divider(
                      color: AppColor.dividerColor,
                      thickness: 1.3,
                    ),
                    SizedBox(
                      height: 33.h,
                    ),
                    Text(
                      "NOTIFICATION",
                      style: subtitleTextStyle.copyWith(
                          fontSize: 10.sp,
                          color: const Color(0xff7E7E7E),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 9.h,
                    ),
                    const Divider(
                      color: AppColor.dividerColor,
                      thickness: 1.3,
                    ),
                    SwitchListTile(
                      activeColor: Colors.white,
                      activeTrackColor: AppColor.mainColor,
                      contentPadding: const EdgeInsets.all(0),
                      title: Text(
                        'Get real-time updates',
                        style: subtitleTextStyle.copyWith(
                          color: const Color(0xff111111),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      value: _bool,
                      onChanged: (bool value) {
                        setState(() {
                          _bool = value;
                        });
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomSettingPage extends StatelessWidget {
  String text;
  CustomSettingPage({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: subtitleTextStyle.copyWith(
            color: Color(0xff111111),
            fontWeight: FontWeight.bold,
          ),
        ),
        const Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
          size: 14,
        ),
      ],
    );
  }
}
