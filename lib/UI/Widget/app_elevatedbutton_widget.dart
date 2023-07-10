import 'package:flutter/material.dart';

import '../Utiles/app_color.dart';

class App_Elevatedbutton_Widget extends StatelessWidget {
  const App_Elevatedbutton_Widget(
      {Key? key, required this.onTap, required this.text})
      : super(key: key);
  final String text;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            backgroundColor: AppColors.PrimaryColor,
            padding: const EdgeInsets.all(14)),
        onPressed: onTap,
        child: Text(text));
  }
}
