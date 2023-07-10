import 'package:flutter/material.dart';

import '../../Utiles/app_color.dart';

class IncDecFormField extends StatefulWidget {
  const IncDecFormField({
    Key? key,
    required TextEditingController controller,
  }) : super(key: key);

  @override
  State<IncDecFormField> createState() => _IncDecFormFieldState();
}

class _IncDecFormFieldState extends State<IncDecFormField> {
  final TextEditingController controller = TextEditingController();
  int currentValue = 0;
  @override
  void initState() {
    super.initState();
    controller.text = currentValue.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () {
            currentValue++;
            controller.text = currentValue.toString();
          },
          child: Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: AppColors.PrimaryColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 18,
            ),
          ),
        ),
        const SizedBox(
          width: 2,
        ),
        Expanded(
            child: TextFormField(
                controller: controller,
                textAlign: TextAlign.center,
                readOnly: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(borderSide: BorderSide.none)))),
        const SizedBox(
          width: 2,
        ),
        GestureDetector(
          onTap: () {
            if (currentValue > 1) {
              currentValue--;
              controller.text = currentValue.toString();
            }
          },
          child: Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: AppColors.PrimaryColor,
              borderRadius: BorderRadius.circular(4),
            ),
            child: Icon(
              Icons.remove,
              color: Colors.white,
              size: 18,
            ),
          ),
        ),
      ],
    );
  }
}
