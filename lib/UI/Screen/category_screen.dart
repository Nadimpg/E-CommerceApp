import 'package:ecommerceapp/UI/Getx/category_controller.dart';
import 'package:ecommerceapp/UI/Screen/product_details_list_screen.dart';
import 'package:ecommerceapp/UI/Widget/Home/category_List_Widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Getx/bottom_navigation_controller.dart';

class ProductCategoryScreen extends StatefulWidget {
  const ProductCategoryScreen({super.key});

  @override
  State<ProductCategoryScreen> createState() => _ProductCategoryScreenState();
}

class _ProductCategoryScreenState extends State<ProductCategoryScreen> {
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
          'Categories',
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GetBuilder<CategoryController>(
            builder: (CategoryController) {
              return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemCount: CategoryController.categoryModel.data?.length ?? 0,
                  itemBuilder: (_, index) {
                    return CategoryListWidget(
                        categoryName: CategoryController
                                .categoryModel.data![index].categoryName ??
                            '',
                        image: CategoryController
                                .categoryModel.data![index].categoryImg ??
                            '',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (_) => ProductDetailsListScreen(
                                      categoryId:
                                          '${CategoryController.categoryModel.data![index]..id}')));
                        });
                  });
            },
          ),
        ),
      ),
    );
  }
}
