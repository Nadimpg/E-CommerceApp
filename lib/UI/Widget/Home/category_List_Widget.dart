import 'package:flutter/material.dart';

import '../../Utiles/app_color.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget(
      {Key? key,
      required this.categoryName,
      required this.image,
      required this.onTap})
      : super(key: key);
  final String categoryName;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.PrimaryColor.withOpacity(.15),
                  ),
                  child: Icon(
                    Icons.elevator_rounded,
                    size: 30,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Text(
                  categoryName,
                  style: TextStyle(
                      color: AppColors.PrimaryColor,
                      letterSpacing: .6,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
