import 'package:ecommerceapp/UI/Screen/main_bottom_navigation_bar.dart';
import 'package:ecommerceapp/UI/Utiles/app_color.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 1)).then((value) {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (_) => MainBottomNavigationBar()),
          (route) => false);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Image.asset(
              'assets/images/craftybay.png',
              width: 120,
              fit: BoxFit.scaleDown,
            ),
            const Spacer(),
            CircularProgressIndicator(
              color: AppColors.PrimaryColor,
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              'Version 1.0.0',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 3,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 32,
            )
          ],
        ),
      ),
    );
  }
}
