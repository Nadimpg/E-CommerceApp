import 'package:ecommerceapp/UI/Getx/bottom_navigation_controller.dart';
import 'package:ecommerceapp/UI/Getx/category_controller.dart';
import 'package:ecommerceapp/UI/Getx/home_controller.dart';
import 'package:ecommerceapp/UI/Getx/product_controller.dart';
import 'package:ecommerceapp/UI/Screen/product_details_list_screen.dart';
import 'package:ecommerceapp/UI/Utiles/app_color.dart';
import 'package:ecommerceapp/UI/Widget/Home/home_banner_slide.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../Widget/Home/category_List_Widget.dart';
import '../Widget/Home/product_item_preview_card.dart';
import '../Widget/Home/section_header.dart';
import 'package:get/get.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  HomeController homeController = Get.put(HomeController());
  CategoryController categoryController = Get.put(CategoryController());
  ProductController productController = Get.put(ProductController());

  BottomNavigationController bottomNavigationController =
      Get.put(BottomNavigationController());
  @override
  void initState() {
    super.initState();
    homeController.getProductSliderList();
    categoryController.getCategories();
    productController.getNewProducts();
    productController.getPopularProducts();
    productController.getSpecialProducts();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        title: Image.asset(
          'assets/images/logo_nav.png',
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          CircleAvatar(
            backgroundColor: Colors.grey.shade100,
            radius: 16,
            child: Icon(
              Icons.person,
              color: Colors.grey.shade400,
              size: 18,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.shade100,
            radius: 16,
            child: Icon(
              Icons.call,
              color: Colors.grey.shade400,
              size: 18,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
          CircleAvatar(
            backgroundColor: Colors.grey.shade100,
            radius: 16,
            child: Icon(
              Icons.notification_add,
              color: Colors.grey.shade400,
              size: 18,
            ),
          ),
          const SizedBox(
            width: 5,
          ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              GetBuilder<HomeController>(builder: (HomeController) {
                if (HomeController.getProductSliderInprogress) {
                  return CircularProgressIndicator();
                } else {
                  return HomeBannerSlide(
                    productSliderModel: homeController.productSliderModel,
                  );
                }
              }),
              SectionHeader(
                headerName: 'All Categories',
                onTapSeeAll: () {
                  bottomNavigationController.changeIndex(1);
                },
              ),
              const SizedBox(
                height: 16,
              ),
              GetBuilder<CategoryController>(
                builder: (CategoryController) {
                  return SizedBox(
                    height: 100,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount:
                            categoryController.categoryModel.data?.length ?? 0,
                        itemBuilder: ((context, index) {
                          return CategoryListWidget(
                            image: categoryController
                                    .categoryModel.data![index].categoryImg ??
                                '',
                            categoryName: categoryController
                                    .categoryModel.data![index].categoryName ??
                                '',
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => ProductDetailsListScreen(
                                          categoryId:
                                              '${CategoryController.categoryModel.data![index]..id}')));
                            },
                          );
                        })),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              SectionHeader(headerName: 'Popular', onTapSeeAll: () {}),
              const SizedBox(
                height: 16,
              ),
              GetBuilder<ProductController>(builder: (ProductController) {
                if (productController.popularInProgress) {
                  return Center(
                    child: Text('data'),
                  );
                } else {
                  return SizedBox(
                    height: 150,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: productController
                                .popularproductmodel.data?.length ??
                            0,
                        itemBuilder: ((context, index) {
                          return ProductItemPreview(
                            productData: productController
                                .popularproductmodel.data![index],
                          );
                        })),
                  );
                }
              }),
              const SizedBox(
                height: 20,
              ),
              SectionHeader(headerName: 'Special', onTapSeeAll: () {}),
              const SizedBox(
                height: 16,
              ),
              GetBuilder<ProductController>(builder: (ProductController) {
                if (productController.popularInProgress) {
                  return Center(
                    child: Text('data'),
                  );
                } else {
                  return SizedBox(
                    height: 150,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: productController
                                .specialproductmodel.data?.length ??
                            0,
                        itemBuilder: ((context, index) {
                          return ProductItemPreview(
                            productData: productController
                                .specialproductmodel.data![index],
                          );
                        })),
                  );
                }
              }),
              const SizedBox(
                height: 20,
              ),
              SectionHeader(headerName: 'New', onTapSeeAll: () {}),
              const SizedBox(
                height: 16,
              ),
              GetBuilder<ProductController>(builder: (ProductController) {
                return SizedBox(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount:
                          productController.newproductmodel.data?.length ?? 0,
                      itemBuilder: ((context, index) {
                        return ProductItemPreview(
                          productData:
                              productController.newproductmodel.data![index],
                        );
                      })),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
