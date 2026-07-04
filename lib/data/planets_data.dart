import '../models/planet.dart';

List<Planet> planets = [
  Planet(
    planetIndex: 0,
    planetName: "Mercury",
    planetImagePath: "assets/images/mercury.png",
    planetTitle: "Mercury: The Closest Planet",
    about: """
Mercury is the closest planet to the Sun and the smallest planet in our solar system.
It has no atmosphere to retain heat, causing extreme temperature fluctuations between
day and night. Its surface is heavily cratered, resembling the Moon.
""",
    distanceFromSunKm: 57909227,
    lengthOfDayHours: 1407.6,
    orbitalPeriodYears: 0.24,
    radiusKm: 2439.7,
    massKg: 3.301e23,
    gravity: 3.7,
    surfaceAreaKm2: 7.48e7,
  ),
  Planet(
    planetIndex: 1,
    planetName: "Venus",
    planetImagePath: "assets/images/venus.png",
    planetTitle: "Venus: Earth's Toxic Twin",
    about: """
Venus is often called Earth's twin due to its similar size and structure.
However, its thick carbon dioxide atmosphere traps heat, making it the hottest
planet in the solar system. Sulfuric acid clouds cover its surface.
""",
    distanceFromSunKm: 108209072,
    lengthOfDayHours: 5832.2,
    orbitalPeriodYears: 0.62,
    radiusKm: 6051.8,
    massKg: 4.867e24,
    gravity: 8.87,
    surfaceAreaKm2: 4.60e8,
  ),
  Planet(
    planetIndex: 2,
    planetName: "Earth",
    planetImagePath: "assets/images/earth.png",
    planetTitle: "Earth: Our Blue Marble",
    about: """
Earth is the only known planet that supports life. It has liquid water, a breathable
atmosphere, and a magnetic field that protects it from harmful solar radiation.
""",
    distanceFromSunKm: 149598026,
    lengthOfDayHours: 23.93,
    orbitalPeriodYears: 1,
    radiusKm: 6371,
    massKg: 5.972e24,
    gravity: 9.81,
    surfaceAreaKm2: 5.10e8,
  ),
  Planet(
    planetIndex: 3,
    planetName: "Mars",
    planetImagePath: "assets/images/mars.png",
    planetTitle: "Mars: The Red Planet",
    about: """
Mars is a cold, rocky planet with a thin atmosphere. Evidence suggests it once had
liquid water. It is a prime candidate for future human exploration.
""",
    distanceFromSunKm: 227943824,
    lengthOfDayHours: 24.62,
    orbitalPeriodYears: 1.88,
    radiusKm: 3389.5,
    massKg: 6.39e23,
    gravity: 3.71,
    surfaceAreaKm2: 1.45e8,
  ),
  Planet(
    planetIndex: 4,
    planetName: "Jupiter",
    planetImagePath: "assets/images/jupiter.png",
    planetTitle: "Jupiter: The Gas Giant",
    about: """
Jupiter is the largest planet in the solar system. It is composed mainly of hydrogen
and helium and has a powerful magnetic field. Its Great Red Spot is a massive storm.
""",
    distanceFromSunKm: 778547669,
    lengthOfDayHours: 9.92,
    orbitalPeriodYears: 11.86,
    radiusKm: 69911,
    massKg: 1.898e27,
    gravity: 24.79,
    surfaceAreaKm2: 6.21e15,
  ),
  Planet(
    planetIndex: 5,
    planetName: "Saturn",
    planetImagePath: "assets/images/saturn.png",
    planetTitle: "Saturn: The Ringed Planet",
    about: """
Saturn is famous for its beautiful ring system made of ice and rock. It is a gas
giant with many moons, including Titan, which has lakes of liquid methane.
""",
    distanceFromSunKm: 1426666422,
    lengthOfDayHours: 10.66,
    orbitalPeriodYears: 29.46,
    radiusKm: 58232,
    massKg: 5.683e26,
    gravity: 10.44,
    surfaceAreaKm2: 4.27e15,
  ),
  Planet(
    planetIndex: 6,
    planetName: "Uranus",
    planetImagePath: "assets/images/uranus.png",
    planetTitle: "Uranus: The Tilted Planet",
    about: """
Uranus is an ice giant with a unique sideways rotation. Its atmosphere contains
methane, giving it a pale blue color. It has faint rings and many moons.
""",
    distanceFromSunKm: 2870990000,
    lengthOfDayHours: 17.24,
    orbitalPeriodYears: 84.01,
    radiusKm: 25362,
    massKg: 8.681e25,
    gravity: 8.69,
    surfaceAreaKm2: 8.1e15,
  ),
  Planet(
    planetIndex: 7,
    planetName: "Neptune",
    planetImagePath: "assets/images/neptune.png",
    planetTitle: "Neptune: The Distant World",
    about: """
Neptune is the farthest planet from the Sun. It is known for its deep blue color and
extreme winds, the fastest in the solar system.
""",
    distanceFromSunKm: 4498252900,
    lengthOfDayHours: 16.11,
    orbitalPeriodYears: 164.8,
    radiusKm: 24622,
    massKg: 1.024e26,
    gravity: 11.15,
    surfaceAreaKm2: 7.65e15,
  ),
  Planet(
    planetIndex: 8,
    planetName: "Sun",
    planetImagePath: "assets/images/sun.png",
    planetTitle: "The Sun: Our Solar System's Star",
    about: """
The Sun is the heart of our solar system. It provides heat and light through nuclear
fusion and controls the motion of all planets with its immense gravity.
""",
    distanceFromSunKm: 0,
    lengthOfDayHours: 0,
    orbitalPeriodYears: 0,
    radiusKm: 695700,
    massKg: 1.989e30,
    gravity: 274,
    surfaceAreaKm2: 6.09e12,
  ),
];
