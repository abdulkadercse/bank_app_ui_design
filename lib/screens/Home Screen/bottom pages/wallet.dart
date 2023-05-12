import 'package:bank_app_ui_design/const/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../style/style.dart';
import '../../../widgets/custom_fund_wallet.dart';
import '../../../widgets/custom_list_title.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  List<String> countryIcon = [
    "assets/images/ngn.png",
    "assets/images/usd.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          "My Wallets",
          style: titleTextStyle.copyWith(
            fontSize: 20.sp,
          ),
        ),
        centerTitle: true,
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
                height: 100,
                child: ListView.builder(
                    itemCount: countryIcon.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (_, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10.0).w,
                        child: Container(
                          width: 196.w,
                          height: 89.h,
                          decoration: BoxDecoration(
                              color: const Color(0xff08083D),
                              borderRadius: BorderRadius.circular(10).r),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                    left: 17.0, top: 16.0, right: 16.0)
                                .w,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      countryIcon[index],
                                      height: 7,
                                      width: 11,
                                    ),
                                    SizedBox(
                                      width: 4.w,
                                    ),
                                    Text(
                                      "NGN",
                                      style: titleTextStyle.copyWith(
                                          color: Colors.white, fontSize: 10.sp),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Text(
                                  "AVAILABLE BALANCE",
                                  style: titleTextStyle.copyWith(
                                    fontSize: 7.sp,
                                    color: const Color(0xffF1F3F4),
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "N190,000",
                                      style: titleTextStyle.copyWith(
                                        fontSize: 22.sp,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const Icon(
                                      Icons.arrow_forward,
                                      color: Colors.white,
                                    )
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
                  height: 497.h,
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomFundWallet(
                              icon: Icons.account_balance,
                              backgroundColor: AppColor.mainColor,
                              text: 'Fund Wallet',
                              iconColor: Colors.white,
                            ),
                            CustomFundWallet(
                              icon: Icons.send_to_mobile,
                              backgroundColor: AppColor.mainColor,
                              text: 'Send Money',
                              iconColor: Colors.white,
                            ),
                            CustomFundWallet(
                              icon: Icons.send_to_mobile,
                              backgroundColor: AppColor.mainColor,
                              text: 'Withdraw',
                              iconColor: Colors.white,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 43.h,
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
                          backgroundColor: Color(0xffCBEEEA),
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
                          backgroundColor: Color(0xffFFCFCF),
                          iconColor: Color(0xffE64E00),
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
                          backgroundColor: Color(0xffCBEEEA),
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
                          backgroundColor: Color(0xffFFCFCF),
                          iconColor: Color(0xffE64E00),
                          title: 'Alpha Loans',
                          subTitle: '28, Jan 2020',
                          tralingText: '\$N10,000',
                        ),
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
