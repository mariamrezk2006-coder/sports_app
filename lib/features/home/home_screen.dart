import 'package:flutter/material.dart';
import 'package:sports_app/core/constants/app_colors.dart';
import 'package:sports_app/core/widgets/custom_bottom_nav_bar.dart';
import 'package:sports_app/core/widgets/custom_search_field.dart';
import 'package:sports_app/core/widgets/product_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final products = [
      {
       "image": "assets/images/WhatsApp Image 2026-06-29 at 1.46.05 AM.jpeg",
        "title": "Nike Air Max",
        "subtitle": "Running Shoes",
        "price": "\$120",
      },
      {
        "image": "assets/images/photo-1542291026-7eec264c27ff.jpg",
        "title": "Football",
        "subtitle": "Professional Ball",
        "price": "\$60",
      },
      {
        "image": "assets/images/photo-1580089595767-98745d7025c5.jpg",
        "title": "Adidas Jersey",
        "subtitle": "Sports Wear",
        "price": "\$90",
      },
      {
        "image": "assets/images/photo-1535879335191-618713ec3e3f.jpg",
        "title": "Goalkeeper Gloves",
        "subtitle": "Puma",
        "price": "\$45",
      },
    ];

    return Scaffold(
      backgroundColor: AppColors.background,

      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: const Text(
          "Discover",
          style: TextStyle(
            fontSize: 32,
            color: AppColors.black,
            fontWeight: FontWeight.bold,
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
              Icons.notifications_none,
              color: Colors.black,
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [

            const SizedBox(height: 10),

            const CustomSearchField(),

            const SizedBox(height: 20),

            SizedBox(
              height: 42,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [

                  _chip("All", true),
                  _chip("Shoes", false),
                  _chip("Balls", false),
                  _chip("Jerseys", false),
                  _chip("Accessories", false),

                ],
              ),
            ),

            const SizedBox(height: 25),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text(
                  "Popular Products",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  "See All",
                  style: TextStyle(
                    color: AppColors.primary,
                    fontWeight: FontWeight.w600,
                  ),
                ),

              ],
            ),

            const SizedBox(height: 20),
Expanded(
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  childAspectRatio: .82,
                ),
                itemBuilder: (context, index) {
                  return ProductCard(
                    image: products[index]["image"]!,
                    title: products[index]["title"]!,
                    subtitle: products[index]["subtitle"]!,
                    price: products[index]["price"]!,
                  );
                },
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar:const CustomBottomNavBar(
        currentIndex: 0,
        
      ),
    );
  }

  Widget _chip(String title, bool selected) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(horizontal: 22),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: selected ? AppColors.primary : Colors.white,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(
          color: selected
              ? AppColors.primary
              : Colors.grey.shade300,
        ),
      ),
      child: Text(
        title,
        style: TextStyle(
          color: selected ? Colors.white : Colors.black,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
