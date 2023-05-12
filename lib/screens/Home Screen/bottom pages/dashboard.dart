import 'package:bank_app_ui_design/const/app_color.dart';
import 'package:bank_app_ui_design/style/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../widgets/custom_fund_wallet.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {


    return Scaffold();


    // return SafeArea(
    //   child: Scaffold(
    //       backgroundColor: Color(0xff051F0E),
    //       body: SingleChildScrollView(
    //         child: Column(
    //           crossAxisAlignment: CrossAxisAlignment.start,
    //           children: [
    //             Padding(
    //               padding: const EdgeInsets.all(16.0),
    //               child: Row(
    //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Row(
    //                     children: [
    //                       Container(
    //                         width: 30.w,
    //                         height: 30.h,
    //                         decoration: const BoxDecoration(
    //                             shape: BoxShape.circle,
    //                             gradient: LinearGradient(
    //                                 begin: Alignment.topCenter,
    //                                 end: Alignment.bottomCenter,
    //                                 colors: [
    //                                   Color(0xff3417A8),
    //                                   Color(0xff4E17A8),
    //                                 ])),
    //                         child: const Center(
    //                           child: Text(
    //                             "OP",
    //                             style: TextStyle(
    //                               color: Colors.white,
    //                             ),
    //                           ),
    //                         ),
    //                       ),
    //                       SizedBox(
    //                         width: 10.h,
    //                       ),
    //                       Column(
    //                         crossAxisAlignment: CrossAxisAlignment.start,
    //                         children: [
    //                           Text(
    //                             "Hello, Precious!",
    //                             style: titleTextStyle.copyWith(
    //                               fontSize: 16.sp,
    //                               color: Colors.white,
    //                             ),
    //                           ),
    //                           SizedBox(
    //                             height: 1.h,
    //                           ),
    //                           Text(
    //                             "Su/Pre123",
    //                             style: subtitleTextStyle.copyWith(
    //                               fontSize: 9.sp,
    //                             ),
    //                           ),
    //                         ],
    //                       )
    //                     ],
    //                   ),
    //                   const Icon(
    //                     Icons.notifications,
    //                     weight: 16,
    //                     color: Colors.white,
    //                   )
    //                 ],
    //               ),
    //             ),
    //             SizedBox(
    //               height: 20.h,
    //             ),
    //             SizedBox(
    //               height: 100,
    //               child: ListView.builder(
    //                   itemCount: 10,
    //                   shrinkWrap: true,
    //                   scrollDirection: Axis.horizontal,
    //                   itemBuilder: (_, index) {
    //                     return Padding(
    //                       padding: const EdgeInsets.all(8.0),
    //                       child: Container(
    //                         width: 196.w,
    //                         height: 89.h,
    //                         color: Colors.red,
    //                       ),
    //                     );
    //                   }),
    //             ),
    //
    //             Container(
    //               width: double.infinity,
    //               height: 150.h,
    //               decoration: BoxDecoration(
    //                 color: Colors.green,
    //                 borderRadius: BorderRadius.only(
    //                     topLeft: const Radius.circular(20).w,
    //                     topRight: const Radius.circular(20).w),
    //               ),
    //               child: Padding(
    //                 padding:
    //                 const EdgeInsets.only(left: 30.0, right: 34, top: 18).w,
    //                 child: Row(
    //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                   children: [
    //                     HomeFundWalletCard(
    //                       text: 'Fund Wallet',
    //                       icon: Icons.account_balance,
    //                     ),
    //                     HomeFundWalletCard(
    //                       text: 'Send Money',
    //                       icon: Icons.send_to_mobile,
    //                     ),
    //                     HomeFundWalletCard(
    //                       text: 'Withdraw',
    //                       icon: Icons.send_to_mobile,
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //             Container(
    //               width: double.infinity,
    //               height: 500.h,
    //               decoration: BoxDecoration(
    //             color: Colors.white,
    //             borderRadius: BorderRadius.only(
    //                 topLeft: const Radius.circular(20).w,
    //                 topRight: const Radius.circular(20).w),
    //               ),
    //               child: Padding(
    //             padding: const EdgeInsets.only(
    //                 left: 35.0, top: 22.0, right: 38.0),
    //             child: Column(
    //               crossAxisAlignment: CrossAxisAlignment.start,
    //               children: [
    //                 Text(
    //                   "Recent Transactions",
    //                   style: titleTextStyle.copyWith(
    //                     fontSize: 17.sp,
    //                   ),
    //                 ),
    //                 const Divider(
    //                   color: AppColor.dividerColor,
    //                   thickness: 1,
    //                 ),
    //                 CustomListTile(
    //                   title: 'Access Bank ',
    //                   subTitle: '28, Jan 2020',
    //                   leadinIcon: Icons.call_received,
    //                   color: Color(0xffCBEEEA),
    //                   iconColor: AppColor.mainColor,
    //                 ),
    //                 const Divider(
    //                   color: AppColor.dividerColor,
    //                   thickness: 1,
    //                 ),
    //                 CustomListTile(
    //                   title: 'Alpha Loans ',
    //                   subTitle: 'N10,000',
    //                   leadinIcon: Icons.call_received,
    //                   color: const Color(0xffFFCFCF),
    //                   iconColor: Color(0xffE64E00),
    //                 ),
    //                 const Divider(
    //                   color: AppColor.dividerColor,
    //                   thickness: 1,
    //                 ),
    //                 CustomListTile(
    //                   title: 'Access Bank ',
    //                   subTitle: '28, Jan 2020',
    //                   leadinIcon: Icons.call_received,
    //                   color: Color(0xffCBEEEA),
    //                   iconColor: AppColor.mainColor,
    //                 ),
    //                 const Divider(
    //                   color: AppColor.dividerColor,
    //                   thickness: 1,
    //                 ),
    //                 CustomListTile(
    //                   title: 'Alpha Loans ',
    //                   subTitle: 'N10,000',
    //                   leadinIcon: Icons.call_received,
    //                   color: const Color(0xffFFCFCF),
    //                   iconColor: Color(0xffE64E00),
    //                 ),
    //                 const Divider(
    //                   color: AppColor.dividerColor,
    //                   thickness: 1,
    //                 ),
    //                 Center(
    //                     child: Text(
    //                       "View All",
    //                       style: titleTextStyle.copyWith(
    //                         fontSize: 14.sp,
    //                         color: AppColor.mainColor,
    //                       ),
    //                     )),
    //
    //
    //
    //               ],
    //             ),
    //               ),
    //             )
    //
    //
    //           ],
    //         ),
    //       )),
    // );
  }
}

// class CustomListTile extends StatelessWidget {
//   IconData leadinIcon;
//   Color color;
//   Color iconColor;
//   String title;
//   String subTitle;
//   CustomListTile(
//       {super.key,
//       required this.title,
//       required this.color,
//       required this.subTitle,
//       required this.iconColor,
//       required this.leadinIcon});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListTile(
//       leading: Padding(
//         padding: const EdgeInsets.only(top: 8.0),
//         child: Container(
//           width: 30.w,
//           height: 30.h,
//           decoration: BoxDecoration(
//             shape: BoxShape.circle,
//             color: color,
//           ),
//           child: Icon(
//             leadinIcon,
//             size: 16,
//             color: iconColor,
//           ),
//         ),
//       ),
//       title: Text(
//         title,
//         style: titleTextStyle.copyWith(
//           fontSize: 17.sp,
//         ),
//       ),
//       subtitle: Text(
//         subTitle,
//         style: subtitleTextStyle.copyWith(
//           fontSize: 10.sp,
//         ),
//       ),
//       trailing: Text(
//         "\$2,400",
//         style: titleTextStyle.copyWith(
//           fontSize: 16.sp,
//         ),
//       ),
//     );
//   }
// }
