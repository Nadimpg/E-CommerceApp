import 'package:ecommerceapp/UI/Screen/verify_otp_screen.dart';
import 'package:ecommerceapp/UI/Utiles/app_color.dart';
import 'package:flutter/material.dart';

import '../Widget/App_Textfield_Widget.dart';
import '../Widget/app_elevatedbutton_widget.dart';

class EmailAuthScreen extends StatefulWidget {
  const EmailAuthScreen({super.key});

  @override
  State<EmailAuthScreen> createState() => _nameState();
}

class _nameState extends State<EmailAuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
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
                  'Welcome back',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontSize: 28),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'Please Enter Your Email Address',
                  style: TextStyle(
                      color: Color(0xFFa6a6a6),
                      letterSpacing: .5,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 16,
                ),
                AppTextFieldWidget(
                  hinText: 'Email Address',
                  controller: TextEditingController(),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  width: double.infinity,
                  child: App_Elevatedbutton_Widget(
                    text: 'Next',
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => VerifyOtpScreen()));
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
