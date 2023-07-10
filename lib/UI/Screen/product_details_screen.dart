import 'dart:html';

import 'package:ecommerceapp/UI/Utiles/app_color.dart';
import 'package:ecommerceapp/UI/Widget/Product_Details/product_image_slider.dart';
import 'package:ecommerceapp/UI/Widget/cart/inc_dec_form_field.dart';
import 'package:flutter/material.dart';

import '../Widget/app_elevatedbutton_widget.dart';

class Product_Details_Screen extends StatefulWidget {
  const Product_Details_Screen({super.key});

  @override
  State<Product_Details_Screen> createState() => _Product_Details_ScreenState();
}

class _Product_Details_ScreenState extends State<Product_Details_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: BackButton(color: Colors.black54),
        title: Text(
          'Product Details',
          style: TextStyle(
            color: Colors.black54,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 6,
                  ),
                  ProductImageSlider(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              'Happy New Year Nike shoe original brand thubnil0129 ',
                              style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(136, 54, 1, 1),
                              ),
                              maxLines: 2,
                            )),
                            SizedBox(
                              width: 90,
                              child: IncDecFormField(
                                  controller: TextEditingController()),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            Text('4.5'),
                            SizedBox(
                              width: 8,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Reviews',
                                  style:
                                      TextStyle(color: AppColors.PrimaryColor),
                                )),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: AppColors.PrimaryColor,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Icon(
                                Icons.favorite_border,
                                size: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Color',
                          style: TextStyle(
                              color: Color.fromARGB(137, 35, 23, 23),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (int i = 0; i < 5; i++)
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: CircleAvatar(
                                    radius: 15,
                                    backgroundColor: AppColors.PrimaryColor,
                                    child: Icon(Icons.check),
                                  ),
                                )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Size',
                          style: TextStyle(
                              color: Color.fromARGB(137, 35, 23, 23),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              for (int i = 0; i < 5; i++)
                                Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      padding: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: Colors.black54, width: 2),
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Text('XL'),
                                    ))
                            ],
                          ),
                        ),
                        Text(
                          'Description',
                          style: TextStyle(
                              color: Color.fromARGB(137, 35, 23, 23),
                              fontSize: 16,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '''There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.''',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 13,
                              letterSpacing: .4),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
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
                        onTap: () {}, text: 'Add To Card'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
