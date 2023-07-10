import 'package:ecommerceapp/UI/Screen/main_bottom_navigation_bar.dart';
import 'package:ecommerceapp/UI/Screen/verify_otp_screen.dart';
import 'package:flutter/material.dart';

import '../Widget/App_Textfield_Widget.dart';
import '../Widget/app_elevatedbutton_widget.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 35,
                ),
                Image.asset(
                  'assets/images/craftybay.png',
                  width: 120,
                  fit: BoxFit.scaleDown,
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Completed Profile',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontSize: 28),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Get Started with us with your details',
                  style: TextStyle(
                      color: Color(0xFFa6a6a6),
                      letterSpacing: .5,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 16,
                ),
                AppTextFieldWidget(
                  hinText: 'First Name',
                  controller: TextEditingController(),
                ),
                const SizedBox(
                  height: 8,
                ),
                AppTextFieldWidget(
                  hinText: 'First Name',
                  controller: TextEditingController(),
                ),
                const SizedBox(
                  height: 8,
                ),
                AppTextFieldWidget(
                  hinText: 'Last Name',
                  controller: TextEditingController(),
                ),
                const SizedBox(
                  height: 8,
                ),
                AppTextFieldWidget(
                  hinText: 'Mobile',
                  controller: TextEditingController(),
                ),
                const SizedBox(
                  height: 8,
                ),
                AppTextFieldWidget(
                  hinText: 'City',
                  controller: TextEditingController(),
                ),
                const SizedBox(
                  height: 8,
                ),
                AppTextFieldWidget(
                  maxline: 4,
                  hinText: 'Shipping Address',
                  controller: TextEditingController(),
                ),
                const SizedBox(
                  height: 8,
                ),
                SizedBox(
                  width: double.infinity,
                  child: App_Elevatedbutton_Widget(
                    text: 'Complete',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainBottomNavigationBar()));
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
