import 'package:flutter/material.dart';
import 'package:sports_app/core/constants/app_colors.dart';
import 'package:sports_app/features/home/home_screen.dart';
import 'package:sports_app/features/profile/profile_screen.dart';
import 'package:sports_app/features/settings/settings_screen.dart';
import 'package:sports_app/features/shop/shop_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int)? onTap;

  const CustomBottomNavBar({
    super.key,
    required this.currentIndex,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: Colors.grey,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.white,
      elevation: 10,
      onTap: (index) {
        if (onTap != null) {
          onTap!(index);
          return;
        }

        if (index == currentIndex) return;

        Widget screen;

        switch (index) {
          case 0:
            screen = const HomeScreen();
            break;
          case 1:
            screen = const ShopScreen();
            break;
          case 2:
            screen = const ProfileScreen();
            break;
          default:
            screen = const SettingsScreen();
        }

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => screen),
        );
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_bag_outlined),
          activeIcon: Icon(Icons.shopping_bag),
          label: "Shop",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          activeIcon: Icon(Icons.person),
          label: "Profile",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_outlined),
          activeIcon: Icon(Icons.settings),
          label: "Settings",
        ),
      ],
    );
  }
}