import 'package:ecommerceapp/UI/Getx/bottom_navigation_controller.dart';
import 'package:ecommerceapp/UI/Screen/carts_screen.dart';
import 'package:ecommerceapp/UI/Screen/category_screen.dart';
import 'package:ecommerceapp/UI/Screen/home_scree.dart';
import 'package:ecommerceapp/UI/Screen/wish_list_screen.dart';
import 'package:ecommerceapp/UI/Utiles/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBottomNavigationBar extends StatefulWidget {
  const MainBottomNavigationBar({super.key});

  @override
  State<MainBottomNavigationBar> createState() =>
      _MainBottomNavigationBarState();
}

class _MainBottomNavigationBarState extends State<MainBottomNavigationBar> {
  BottomNavigationController controller = Get.put(BottomNavigationController());
  final List<Widget> Screens = [
    Home_Screen(),
    ProductCategoryScreen(),
    Carts_Screen(),
    WishListScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          GetBuilder<BottomNavigationController>(builder: (context) {
        return BottomNavigationBar(
            currentIndex: controller.selectedIndex,
            selectedItemColor: AppColors.PrimaryColor,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            onTap: (index) {
              controller.changeIndex(index);
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.category),
                label: 'Category',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard),
                label: 'Wish',
              ),
            ]);
      }),
      body: GetBuilder<BottomNavigationController>(
        builder: (controller) {
          return Screens[controller.selectedIndex];
        },
      ),
    );
  }
}
