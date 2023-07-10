import 'package:ecommerceapp/UI/Widget/Home/product_item_preview_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Getx/bottom_navigation_controller.dart';
import '../Widget/Home/category_List_Widget.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({super.key});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  BottomNavigationController controller = Get.put(BottomNavigationController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            controller.changeIndex(0);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 1,
        title: const Text(
          'WishList',
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, childAspectRatio: 5 / 6),
              itemCount: 15,
              itemBuilder: (index, _) {
                return Text('data');
              }),
        ),
      ),
    );
  }
}
