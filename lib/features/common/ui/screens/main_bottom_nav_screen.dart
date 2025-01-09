import 'package:crafty_bay/features/category/ui/screens/category_list_screen.dart';
import 'package:crafty_bay/features/common/ui/controllers/main_bottom_nav_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../home/ui/screens/home_screen.dart';

class MainBottomNavScreen extends StatefulWidget {
  static const String name = '/bottom-nav-bar';
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  List<Widget> _screens = [
    HomeScreen(),
    CategoryListScreen(),
    HomeScreen(),
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainBottomNavController>(
      builder: (bottomNavController) {
        return Scaffold(
          body: _screens[bottomNavController.selectedIndex],
          bottomNavigationBar: NavigationBar(
            selectedIndex: bottomNavController.selectedIndex,
            onDestinationSelected: bottomNavController.changeIndex,
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
              NavigationDestination(
                  icon: Icon(Icons.category), label: 'Categories'),
              NavigationDestination(icon: Icon(Icons.shopping_cart), label: 'Cart'),
              NavigationDestination(
                  icon: Icon(Icons.favorite_border), label: 'WishList'),
            ],
          ),
        );
      }
    );
  }
}
