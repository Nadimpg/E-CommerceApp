import 'package:ecommerceapp/UI/Screen/EmailAuth_Screen.dart';
import 'package:ecommerceapp/UI/Screen/Splash_Screen.dart';
import 'package:ecommerceapp/UI/Screen/main_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CryftyBayApp());
}

class CryftyBayApp extends StatefulWidget {
  const CryftyBayApp({super.key});

  @override
  State<CryftyBayApp> createState() => _CryftyBayAppState();
}

class _CryftyBayAppState extends State<CryftyBayApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
