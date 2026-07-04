import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/components/appbar.dart';
import 'package:space/screens/planet_details_screen.dart';
import 'package:space/widgets/red_button.dart';
import 'package:flutter/rendering.dart';
import 'package:space/data/planets_data.dart';
import '../widgets/arrow_button.dart';

class HomeScreen extends StatefulWidget {
  static const String routName = "homeScreen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = PageController();
  int currentPlanet = 0;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPaintSizeEnabled = false;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //---------------AppBar---------//
            PlanetAppBar(
              planetName: "Explore",
              planetTitle: "Which planet\nwould you like to explore?",
              hasBackArrow: false,
            ),
            SizedBox(
              height: 250,
              child: PageView.builder(
                reverse: true,
                onPageChanged: (value) {
                  setState(() {
                    currentPlanet = value;
                  });
                },
                controller: pageController,
                itemCount: 9,
                itemBuilder: (context, index) {
                  return Image.asset(
                    planets[index].planetImagePath,
                    scale: 2,
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
              child: Column(
                children: [
                  //----------- PlanetsSwip-------//
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Opacity(
                            opacity: currentPlanet == 8 ? 0 : 1,
                            child: ArrowButton(
                              onClick: changePlanet,
                              arrowDirection: "back",
                              arrowButtonIcon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Text(
                            planets[currentPlanet].planetName,
                            style: GoogleFonts.spaceGrotesk(
                              textStyle: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                          Opacity(
                            opacity: currentPlanet == 0 ? 0 : 1,
                            child: ArrowButton(
                              arrowDirection: "forward",
                              onClick: changePlanet,
                              arrowButtonIcon: Icon(
                                Icons.arrow_forward,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),

                      //-------------NavigateButton---------//
                      Padding(
                        padding: const EdgeInsets.only(top: 32),
                        child: RedButton(
                          redButtonText:
                              "Explore ${planets[currentPlanet].planetName}",
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              PlanetDetailsScreen.routName,
                              arguments: currentPlanet,
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void changePlanet(String arrowDirection) {
    setState(() {
      if (arrowDirection == "forward") {
        pageController.previousPage(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      } else if (arrowDirection == "back") {
        pageController.nextPage(
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });
  }
}
