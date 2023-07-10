import 'package:ecommerceapp/UI/Screen/complete_profile_screen.dart';
import 'package:ecommerceapp/UI/Utiles/app_color.dart';
import 'package:flutter/material.dart';

import '../Widget/app_elevatedbutton_widget.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyOtpScreen extends StatefulWidget {
  const VerifyOtpScreen({super.key});

  @override
  State<VerifyOtpScreen> createState() => _VerifyOtpScreenState();
}

class _VerifyOtpScreenState extends State<VerifyOtpScreen> {
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
                  'Enter Otp Code',
                  style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontSize: 28),
                ),
                const SizedBox(
                  height: 16,
                ),
                const Text(
                  'A 4 digits number sent to your email',
                  style: TextStyle(
                      color: Color(0xFFa6a6a6),
                      letterSpacing: .5,
                      fontSize: 16),
                ),
                const SizedBox(
                  height: 16,
                ),
                PinCodeTextField(
                  length: 4,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 40,
                      fieldWidth: 30,
                      activeFillColor: Colors.white,
                      inactiveFillColor: Colors.white,
                      selectedFillColor: Colors.white,
                      selectedColor: AppColors.PrimaryColor),
                  animationDuration: const Duration(milliseconds: 300),
                  backgroundColor: Colors.transparent,
                  enableActiveFill: true,
                  onCompleted: (v) {},
                  onChanged: (value) {},
                  beforeTextPaste: (text) {
                    return true;
                  },
                  appContext: context,
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
                              builder: (context) => CompleteProfileScreen()));
                    },
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                RichText(
                  text: TextSpan(text: 'This code will expire in', children: [
                    TextSpan(
                        text: '120s',
                        style: TextStyle(color: AppColors.PrimaryColor))
                  ]),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextButton(onPressed: () {}, child: Text('Resend code'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
