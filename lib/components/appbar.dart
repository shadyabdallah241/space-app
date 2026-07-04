import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/screens/home_screen.dart';

import '../widgets/arrow_button.dart';

class PlanetAppBar extends StatelessWidget {
  final String planetName;
  final String planetTitle;
  final bool hasBackArrow;
  const PlanetAppBar({
    super.key,
    this.planetName = "",
    this.planetTitle = "",
    this.hasBackArrow = true,
  });

  @override
  Widget build(BuildContext context) {
    String appbarBackground = "assets/images/rectangle4.png";
    return SizedBox(
      height: 220,
      width: double.infinity,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(appbarBackground, fit: BoxFit.cover),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: AlignmentGeometry.bottomCenter,
                end: AlignmentGeometry.topCenter,
                colors: [Colors.black, Colors.transparent],
              ),
            ),
          ),
          Align(
            alignment: AlignmentGeometry.topLeft,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Opacity(
                opacity: hasBackArrow ? 1 : 0,
                child: ArrowButton(
                  arrowButtonIcon: Icon(Icons.arrow_back, color: Colors.white),
                  onClick: (arrowDirection) {
                    Navigator.pushNamed(context, HomeScreen.routName);
                  },
                  arrowDirection: "back",
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: Text(
                  planetName,
                  style: GoogleFonts.spaceGrotesk(
                    textStyle: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ),
              ),
              Spacer(),
              Text(
                textAlign: TextAlign.start,
                planetTitle,
                style: GoogleFonts.spaceGrotesk(
                  textStyle: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
