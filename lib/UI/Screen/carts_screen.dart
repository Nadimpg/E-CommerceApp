import 'dart:html';

import 'package:ecommerceapp/UI/Utiles/app_color.dart';
import 'package:ecommerceapp/UI/Widget/App_Textfield_Widget.dart';
import 'package:ecommerceapp/UI/Widget/app_elevatedbutton_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Getx/bottom_navigation_controller.dart';
import '../Widget/cart/cart_production_item.dart';

class Carts_Screen extends StatefulWidget {
  const Carts_Screen({super.key});

  @override
  State<Carts_Screen> createState() => _Carts_ScreenState();
}

class _Carts_ScreenState extends State<Carts_Screen> {
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
            'Carts',
            style: TextStyle(
              color: Colors.black54,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return CartProductItem();
                  }),
            ),
            SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: AppColors.PrimaryColor.withOpacity(.4),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          'Total Prize',
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 13,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          '\$120000',
                          style: TextStyle(
                              color: AppColors.PrimaryColor,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                    SizedBox(
                        height: 100,
                        child: App_Elevatedbutton_Widget(
                            onTap: () {}, text: 'Checkout'))
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
