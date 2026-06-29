import 'package:flutter/material.dart';
import 'package:sports_app/core/constants/app_colors.dart';
import 'package:sports_app/core/widgets/custom_bottom_nav_bar.dart';
import 'package:sports_app/core/widgets/profile_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Profile",
          style: TextStyle(
            color: AppColors.black,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [

            const CircleAvatar(
              radius: 45,
              backgroundColor: AppColors.primary,
              child: Text(
                "JD",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 15),

            const Text(
              "John Doe",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 5),

            const Text(
              "john.doe@flutter.dev",
              style: TextStyle(
                color: AppColors.grey,
                fontSize: 15,
              ),
            ),

            const SizedBox(height: 18),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  "Edit Profile",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 25),

            Container(
  padding: const EdgeInsets.symmetric(vertical: 20),
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(18),
  ),
  child: const Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          Icon(Icons.inventory_2_outlined, color: AppColors.primary),
          SizedBox(height: 6),
          Text("24", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          SizedBox(height: 6),
          Text("Orders"),
        ],
      ),
      Column(
        children: [
          Icon(Icons.favorite, color: Colors.red),
          SizedBox(height: 6),
          Text("12", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          SizedBox(height: 6),
          Text("Wishlist"),
        ],
      ),
      Column(
        children: [
          Icon(Icons.star, color: Colors.amber),
          SizedBox(height: 6),
          Text("4.8", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          SizedBox(height: 6),
          Text("Reviews"),
        ],
      ),
    ],
  ),
),

            const SizedBox(height: 25),

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                children: const [

                  ProfileItem(
                    icon: Icons.shopping_bag_outlined,
                    title: "My Orders",
                  ),

                  Divider(height: 1),

                  ProfileItem(
                    icon: Icons.favorite_border,
                    title: "Favorites",
                  ),

                  Divider(height: 1),

                  ProfileItem(
                    icon: Icons.credit_card,
                    title: "Payment Methods",
                  ),

                  Divider(height: 1),

                  ProfileItem(
                    icon: Icons.help_outline,
                    title: "Help Center",
                  ),

                ],
              ),
            ),

            const SizedBox(height: 20),

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
              ),
              child: const ProfileItem(
                icon: Icons.logout,
                title: "Logout",
                iconColor: Colors.red,
                textColor: Colors.red,
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),

      bottomNavigationBar:const CustomBottomNavBar(
        currentIndex: 2,
        
      ),
    );
  }
}