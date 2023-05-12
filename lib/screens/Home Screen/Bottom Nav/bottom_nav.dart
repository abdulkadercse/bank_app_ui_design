import 'package:bank_app_ui_design/const/app_color.dart';
import 'package:bank_app_ui_design/screens/Home%20Screen/bottom%20pages/card.dart';
import 'package:bank_app_ui_design/screens/Home%20Screen/bottom%20pages/settings.dart';
import 'package:bank_app_ui_design/screens/Home%20Screen/bottom%20pages/wallet.dart';
import 'package:flutter/material.dart';

import '../bottom pages/dashboard.dart';


class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  List pages = [
    const DashboardScreen(),
    const WalletScreen(),
    const CardScreen(),
    const SettingsScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        currentIndex: _selectedIndex,
        selectedItemColor: AppColor.mainColor,
        unselectedItemColor: const Color(0xff7A7A7A),
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard),
              label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wallet),
            label: "Wallet",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: "Cards",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),

        ],
      ),
      body: Center(
        child: pages.elementAt(_selectedIndex),
      ),
    );
  }
}