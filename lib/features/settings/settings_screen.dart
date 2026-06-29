import 'package:flutter/material.dart';
import 'package:sports_app/core/constants/app_colors.dart';
import 'package:sports_app/core/widgets/custom_bottom_nav_bar.dart';
import 'package:sports_app/core/widgets/settings_items.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F7),

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          "Settings",
          style: TextStyle(
            color: AppColors.black,
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [

          const SizedBox(height: 10),

          const Text(
            "GENERAL",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),

          const SizedBox(height: 12),

          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              children: [

                SettingsItem(
                  icon: Icons.dark_mode_outlined,
                  title: "Dark Mode",
                  trailing: Switch(
                    value: false,
                    activeColor: Colors.blue,
                    onChanged: (_) {},
                  ),
                ),

                const Divider(height: 1),

                SettingsItem(
                  icon: Icons.notifications_none,
                  title: "Notifications",
                  trailing: Switch(
                    value: true,
                    activeColor: Colors.blue,
                    onChanged: (_) {},
                  ),
                ),

                const Divider(height: 1),

                const SettingsItem(
                  icon: Icons.language,
                  title: "Language",
                  trailing: Text(
                    "English",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            "ACCOUNT",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),

          const SizedBox(height: 12),

          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: const Column(
              children: [

                SettingsItem(
                  icon: Icons.lock_outline,
                  title: "Change Password",
                  trailing: Icon(Icons.chevron_right),
                ),

                Divider(height: 1),

                SettingsItem(
                  icon: Icons.shield_outlined,
                  title: "Privacy Policy",
                  trailing: Icon(Icons.chevron_right),
                ),

                Divider(height: 1),

                SettingsItem(
                  icon: Icons.description_outlined,
                  title: "Terms of Service",
                  trailing: Icon(Icons.chevron_right),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          const Text(
            "ABOUT",
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),

          const SizedBox(height: 12),

          Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: const SettingsItem(
              icon: Icons.info_outline,
              title: "Version",
              trailing: Text(
                "1.0.0",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),

      bottomNavigationBar:const CustomBottomNavBar(
        currentIndex: 3,
        
      ),
    );
  }
}