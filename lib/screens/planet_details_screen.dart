import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/components/appbar.dart';
import 'package:space/data/planets_data.dart';
import 'package:space/models/planet.dart';

class PlanetDetailsScreen extends StatelessWidget {
  static const String routName = "planetDetailsScreen";
  const PlanetDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final int index = ModalRoute.of(context)?.settings.arguments as int? ?? 0;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            PlanetAppBar(
              planetName: planets[index].planetName,
              planetTitle: planets[index].planetTitle,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Image.asset(
                        planets[index].planetImagePath,
                        scale: 1,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "About",
                        style: GoogleFonts.spaceGrotesk(
                          textStyle: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                    PlanetInfo(
                      planet: planets[index],
                      getAttribute: (planet) => planet.about,
                      fontWeight: FontWeight.w300,
                    ),
                    SizedBox(height: 5),
                    PlanetInfo(
                      planet: planets[index],
                      getAttribute: (planet) {
                        return "Distance from Sun (km) : ${planet.distanceFromSunKm}";
                      },
                    ),
                    SizedBox(height: 5),
                    PlanetInfo(
                      planet: planets[index],
                      getAttribute: (planet) {
                        return "Length of Day (hours) : ${planet.lengthOfDayHours}";
                      },
                    ),
                    SizedBox(height: 5),
                    PlanetInfo(
                      planet: planets[index],
                      getAttribute: (planet) {
                        return "Orbital Period (Earth years) : ${planet.orbitalPeriodYears}";
                      },
                    ),
                    SizedBox(height: 5),
                    PlanetInfo(
                      planet: planets[index],
                      getAttribute: (planet) {
                        return "Radius (km) : ${planet.radiusKm}";
                      },
                    ),
                    SizedBox(height: 5),
                    PlanetInfo(
                      planet: planets[index],
                      getAttribute: (planet) {
                        return "Mass (kg) :  ${planet.massKg}";
                      },
                    ),
                    SizedBox(height: 5),
                    PlanetInfo(
                      planet: planets[index],
                      getAttribute: (planet) {
                        return "Gravity (m/s²) : ${planet.gravity}";
                      },
                    ),
                    SizedBox(height: 5),
                    PlanetInfo(
                      planet: planets[index],
                      getAttribute: (planet) =>
                      "Surface Area (km²) :  ${planet.surfaceAreaKm2}"
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PlanetInfo extends StatelessWidget {
  final Planet planet;
  final double textHeight;
  final FontWeight fontWeight;
  final dynamic Function(Planet) getAttribute;

  const PlanetInfo({
    super.key,
    required this.planet,
    required this.getAttribute,
    this.textHeight = 1.2,
    this.fontWeight = FontWeight.w700,
  });

  @override
  Widget build(BuildContext context) {
    final value = getAttribute(planet);
    return Text(
      value != null ? value.toString() : "",
      style: GoogleFonts.spaceGrotesk(
        textStyle: TextStyle(
          fontSize: 16,
          color: Colors.white,
          fontWeight: fontWeight,
          height: 1.4,
        ),
      ),
    );
  }
}
