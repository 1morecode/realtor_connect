import 'dart:async';
import 'package:realtor_connect/views/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:realtor_connect/helper/global_data.dart';
import 'package:realtor_connect/helper/assets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    initializeApp();
    super.initState();
  }

  initializeApp() async {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const DashboardScreen(),
          ),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: cs.primary,
      body: SafeArea(
        child: Center(
          child: Image.asset(Assets.logo, width: size.width*0.8,),
        ),
      ),
    );
  }
}
