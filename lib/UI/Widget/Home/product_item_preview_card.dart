import 'package:ecommerceapp/UI/Data/Model/product_model.dart';
import 'package:ecommerceapp/UI/Screen/product_details_screen.dart';
import 'package:flutter/material.dart';

import '../../Utiles/app_color.dart';

class ProductItemPreview extends StatelessWidget {
  const ProductItemPreview({
    Key? key,
    required this.productData,
  }) : super(key: key);
  final ProductData productData;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (_) => Product_Details_Screen()));
      },
      child: Card(
        elevation: 3,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        child: Column(
          children: [
            Image.asset(
              'assets/images/nike-shoes.png',
              height: 80,
              width: 120,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              productData.title ?? '',
              maxLines: 2,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: Color.fromARGB(136, 12, 10, 10)),
              overflow: TextOverflow.ellipsis,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '\$${productData.price}',
                  style: TextStyle(
                      color: AppColors.PrimaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 8,
                ),
                Icon(
                  Icons.star,
                  size: 14,
                  color: Colors.amberAccent,
                ),
                Text(
                  '${productData.star ?? 0}',
                  style: TextStyle(
                      color: AppColors.PrimaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  width: 8,
                ),
                IconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: AppColors.PrimaryColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Icon(
                      Icons.favorite_outline,
                      color: Colors.white,
                      size: 12,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
