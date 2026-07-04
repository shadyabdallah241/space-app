class Planet {
  final String planetName;
  final String planetTitle;
  final String planetImagePath;
  final String about;
  final int distanceFromSunKm;
  final double lengthOfDayHours;
  final double orbitalPeriodYears;
  final double radiusKm;
  final double massKg;
  final double gravity;
  final double surfaceAreaKm2;
  final int planetIndex;

  Planet.details({
    required this.planetIndex,
    required this.planetName,
    required this.planetTitle,
    required this.planetImagePath,
    required this.about,
    required this.distanceFromSunKm,
    required this.lengthOfDayHours,
    required this.orbitalPeriodYears,
    required this.radiusKm,
    required this.massKg,
    required this.gravity,
    required this.surfaceAreaKm2,
  });

  Planet({
    required this.planetName,
    required this.planetTitle,
    this.planetIndex = 0,
    this.about = "",
    this.planetImagePath = "",
    this.distanceFromSunKm = 0,
    this.lengthOfDayHours = 0,
    this.orbitalPeriodYears = 0,
    this.radiusKm = 0,
    this.massKg = 0,
    this.gravity = 0,
    this.surfaceAreaKm2 = 0,
  });
}
