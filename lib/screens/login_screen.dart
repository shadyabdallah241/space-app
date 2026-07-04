import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/screens/home_screen.dart';
import 'package:space/widgets/red_button.dart';

class LoginScreen extends StatelessWidget {
  static const String routName = "loginScreen";
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0E0E0E),
      body: Stack(
        children: [
          //----------BackGround---------//
          Image.asset("assets/images/Frame_1.png"),
          //----------HeroText---------//
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),

            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Explore \nThe\n Universe",
                style: GoogleFonts.inter(
                  textStyle: TextStyle(
                    fontSize: 52,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ),
          //----------Button---------//
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: RedButton(
                redButtonText: "Explore",
                onPressed: () {
                  Navigator.pushNamed(context, HomeScreen.routName);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
