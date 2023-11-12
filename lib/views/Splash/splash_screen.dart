import 'package:festa/core/colors.dart';
import 'package:festa/views/Login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  goToScreen(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 1500));
    Navigator.of(context)
        .push(MaterialPageRoute(builder: ((context) =>  LoginScreen())));
  }

  @override
  void initState() {
    goToScreen(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: kGreenColor,
      body: SingleChildScrollView(
          child: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 0.45 * screenHeight,
                ),
                Text(
                  'FESTA',
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 0.06 * screenHeight,
                    letterSpacing: 0.02 * screenWidth,
                    fontWeight: FontWeight.bold,
                    fontFamily: GoogleFonts.lora().fontFamily,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 0.35 * screenHeight,
            ),
            const CircularProgressIndicator(
              strokeWidth: 2,
              color: kWhiteColor,
            )
          ],
        ),
      )),
    );
  }
}
