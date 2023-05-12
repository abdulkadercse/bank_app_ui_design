import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../const/app_color.dart';
import '../../../style/style.dart';
import '../../../widgets/custom_fund_wallet.dart';
import '../../../widgets/custom_list_title.dart';

class CardScreen extends StatefulWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  State<CardScreen> createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "My Cards",
          style: titleTextStyle.copyWith(
              fontSize: 20.sp, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add,
          size: 25,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 2.0).w,
          child: Column(
            children: [
              SizedBox(
                height: 10.h,
              ),
              SizedBox(
                height: 150,
                child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10.0).w,
                        child: Container(
                          width: 270.w,
                          height: 150.h,
                          decoration: BoxDecoration(
                              color: const Color(0xff063593),
                              borderRadius: BorderRadius.circular(10).r),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                    left: 20.0, top: 23.0, right: 20.0)
                                .w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'VISA',
                                  style: subtitleTextStyle.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.sp),
                                ),
                                SizedBox(
                                  height: 17.h,
                                ),
                                Text(
                                  "CARD NUMBER",
                                  style: titleTextStyle.copyWith(
                                    fontSize: 7.sp,
                                    color: const Color(0xffF1F3F4),
                                  ),
                                ),
                                Text(
                                  "**** **** **** *379",
                                  style: titleTextStyle.copyWith(
                                      fontSize: 14.sp,
                                      color: const Color(0xffF1F3F4),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "CARD HOLDER NAME",
                                          style: subtitleTextStyle.copyWith(
                                            fontSize: 7.sp,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4.h,
                                        ),
                                        Text(
                                          "Precious Ogar",
                                          style: titleTextStyle.copyWith(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "EXPIRE DATE",
                                          style: subtitleTextStyle.copyWith(
                                            fontSize: 7.sp,
                                          ),
                                        ),
                                        SizedBox(
                                          height: 4.h,
                                        ),
                                        Text(
                                          "02/25",
                                          style: titleTextStyle.copyWith(
                                            fontSize: 13.sp,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, right: 8.0).w,
                child: Container(
                  width: 351.w,
                  height: 470.h,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.only(
                            left: 20.0, top: 18.0, right: 20.0)
                        .w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 23.h,
                        ),
                        Text(
                          "Recent Transactions",
                          style: titleTextStyle.copyWith(fontSize: 17),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        const Divider(
                          color: AppColor.dividerColor,
                          thickness: 1.3,
                        ),
                        SizedBox(
                          height: 11.h,
                        ),
                        CustomListTile(
                          icon: Icons.call_received_outlined,
                          backgroundColor: const Color(0xffCBEEEA),
                          iconColor: AppColor.mainColor,
                          title: 'Access Bank ',
                          subTitle: '28, Jan 2020',
                          tralingText: '\$2,400',
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        const Divider(
                          color: AppColor.dividerColor,
                          thickness: 1.3,
                        ),
                        SizedBox(
                          height: 11.h,
                        ),
                        CustomListTile(
                          icon: Icons.call_received_outlined,
                          backgroundColor: const Color(0xffFFCFCF),
                          iconColor: const Color(0xffE64E00),
                          title: 'Alpha Loans',
                          subTitle: '28, Jan 2020',
                          tralingText: '\$N10,000',
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        const Divider(
                          color: AppColor.dividerColor,
                          thickness: 1.3,
                        ),
                        SizedBox(
                          height: 11.h,
                        ),
                        CustomListTile(
                          icon: Icons.call_received_outlined,
                          backgroundColor: const Color(0xffCBEEEA),
                          iconColor: AppColor.mainColor,
                          title: 'Access Bank ',
                          subTitle: '28, Jan 2020',
                          tralingText: '\$2,400',
                        ),
                        SizedBox(
                          height: 13.h,
                        ),
                        const Divider(
                          color: AppColor.dividerColor,
                          thickness: 1.3,
                        ),
                        SizedBox(
                          height: 11.h,
                        ),
                        CustomListTile(
                          icon: Icons.call_received_outlined,
                          backgroundColor: const Color(0xffFFCFCF),
                          iconColor: const Color(0xffE64E00),
                          title: 'Alpha Loans',
                          subTitle: '28, Jan 2020',
                          tralingText: '\$N10,000',
                        ),
                        SizedBox(
                          height: 59.h,
                        ),
                        Align(
                            alignment: Alignment.center,
                            child: Text(
                              "View All",
                              style: subtitleTextStyle.copyWith(
                                  color: AppColor.mainColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
