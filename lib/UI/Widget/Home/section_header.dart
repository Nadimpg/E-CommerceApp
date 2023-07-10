import 'package:ecommerceapp/UI/Screen/product_details_list_screen.dart';
import 'package:flutter/material.dart';

import '../../Utiles/app_color.dart';
import 'package:get/get.dart';

class SectionHeader extends StatelessWidget {
  const SectionHeader({
    Key? key,
    required this.headerName,
    required this.onTapSeeAll,
  }) : super(key: key);
  final String headerName;
  final VoidCallback onTapSeeAll;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headerName,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            letterSpacing: .6,
          ),
        ),
        TextButton(
            onPressed: onTapSeeAll,
            child: Text(
              'See all',
              style: TextStyle(
                color: AppColors.PrimaryColor,
              ),
            ))
      ],
    );
  }
}
