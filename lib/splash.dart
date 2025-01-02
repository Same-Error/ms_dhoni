import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ms_dhoni/dashboard.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Get.to(() => const Dashboard());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/splashbg.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: const Color(0xFF7B1852).withOpacity(0.8),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "MS",
                  style: TextStyle(
                      fontFamily: "Bebas",
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.white),
                ),
                const Text(
                  "DHONI",
                  style: TextStyle(
                      fontFamily: "Bebas",
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.amber),
                ),
                Image.asset("assets/splash.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
