import 'package:flutter/material.dart';
import 'package:sports_app/core/constants/app_colors.dart';
import 'package:sports_app/core/widgets/custom_bottom_nav_bar.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
        "image": "assets/images/photo-1542291026-7eec264c27ff.jpg",
        "title": "Runner X1",
        "subtitle": "lightweight running shose",
        "price": "\$120",
      },
      {
        "image": "assets/images/photo-1580089595767-98745d7025c5.jpg",
        "title": "Classic jersey",
        "subtitle": "Breathable fabric",
        "price": "\$45",
      },
      {
        "image": "assets/images/WhatsApp Image 2026-06-29 at 1.46.05 AM.jpeg",
        "title": "Pro Soccer Ball",
        "subtitle": "FiFA approved match ball",
        "price": "\$89.99",
      },
      {
        "image": "assets/images/photo-1535879335191-618713ec3e3f.jpg",
        "title": "Gym Duffle Bag",
        "subtitle": "water_resistant with shose",
        "price": "\$35.50",
      },
      {
        "image": "assets/images/photo-1545151414-8a948e1ea54f.jpg",
        "title": "Pro Tennis Racket",
        "subtitle": "carbon fiber frame",
        "price": "\$120.0",
      },
      {
        "image": "assets/images/photo-1599901860904-17e6ed7083a0.jpg",
        "title": "Yogo Mat",
        "subtitle": "Non_slip eco friendly",
        "price": "\$22.00",
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          "Shop",
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: AppColors.black,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20),
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
            ),
            child: const Icon(
              Icons.tune,
              color: AppColors.black,
            ),
          ),
        ],
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];

          return Container(
            margin: const EdgeInsets.only(bottom: 16),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(
              children: [

                Container(
                  width: 90,
                  height: 90,
                  decoration: BoxDecoration(
                    color: AppColors.lightGrey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(12),
                    child: Image.asset(
                      product["image"]!,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),

                const SizedBox(width: 15),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text(
                        product["title"]!,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 6),

                      Text(
                        product["subtitle"]!,
                        style: const TextStyle(
                          color: AppColors.grey,
                          fontSize: 14,
                        ),
                      ),

                      const SizedBox(height: 12),

                      Text(
                        product["price"]!,
                        style: const TextStyle(
                          color: AppColors.primary,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: const Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          );
        },
      ),
      bottomNavigationBar:const CustomBottomNavBar(
        currentIndex: 1,
        
      ),
    );
  }
}
  