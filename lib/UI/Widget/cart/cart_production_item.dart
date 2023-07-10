import 'package:ecommerceapp/UI/Widget/cart/inc_dec_form_field.dart';
import 'package:flutter/material.dart';

import '../../Utiles/app_color.dart';

class CartProductItem extends StatelessWidget {
  const CartProductItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      elevation: 2,
      color: Colors.white,
      child: Row(
        children: [
          const SizedBox(
            width: 8,
          ),
          Image.asset(
            'assets/images/nike-shoes.png',
            width: 70,
            height: 50,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Product Name',
                            style: TextStyle(
                                color: Colors.black,
                                letterSpacing: .4,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              Text(
                                'Colors: Black',
                                style: TextStyle(
                                    color: Colors.black54,
                                    letterSpacing: .4,
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Size: XL',
                                style: TextStyle(
                                    color: Colors.black54,
                                    letterSpacing: .4,
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal),
                              ),
                            ],
                          )
                        ],
                      ),
                      Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.delete,
                            color: Colors.red,
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 6,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$100',
                        style: TextStyle(
                            fontSize: 16, color: AppColors.PrimaryColor),
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 30,
                        width: 90,
                        child: IncDecFormField(
                          controller: TextEditingController(),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
