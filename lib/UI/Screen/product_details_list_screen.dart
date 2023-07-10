import 'package:ecommerceapp/UI/Getx/product_controller.dart';
import 'package:ecommerceapp/UI/Widget/Home/product_item_preview_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Getx/bottom_navigation_controller.dart';
import '../Widget/Home/category_List_Widget.dart';

class ProductDetailsListScreen extends StatefulWidget {
  final String categoryId;

  const ProductDetailsListScreen({super.key, required this.categoryId});
  @override
  State<ProductDetailsListScreen> createState() =>
      _ProductDetailsListScreenState();
}

class _ProductDetailsListScreenState extends State<ProductDetailsListScreen> {
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
          'Product Details List',
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
