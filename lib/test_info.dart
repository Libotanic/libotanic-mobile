import 'package:libotanic/models/extended_plant.dart';
import 'package:libotanic/models/plant_class.dart';
import 'package:libotanic/models/simple_plant.dart';

import 'models/division.dart';
import 'models/place.dart';

class TestInfo {
  static List<Place> places = [
    Place(0, "Ботанический сад Петра Великого","assets/places/botanicheskiy_sad.jpg"),
    Place(1, "Стрельна","assets/places/strelna.jpg"),
    Place(2, "Летний сад","assets/places/letniy_sad.jpg"),
    Place(3, "Ботанический сад ЛТУ","assets/places/ltu.jpg"),
  ];



  static List<Division> divisions = [
    const Division(nameRus: "Хвойные", imageURL: "assets/division/pinophyta.jpg"),
  ];

  static Map<Division, List<PlantClass>> classes = {
    divisions[0]: [PlantClass(nameRus: "Пинопсиды", imageURL: "assets/class/pinopsida.jpg", division: divisions[0])]
  };
  static PlantClass testPlantClass = PlantClass(nameRus: "Пинопсиды", imageURL: "assets/class/pinopsida.jpg", division: divisions[0]);

  static Map<int, ExtendedPlant> extendedPlantsMap = {
    0: ExtendedPlant(0, classes[divisions[0]]![0], "Пихта цельнолистная", "Abies holophylla",),
  };
  static Map<PlantClass, List<ExtendedPlant>> plantsMap = {
    classes[divisions[0]]![0]: [
      extendedPlantsMap[0]!
    ],
  };

  static Map<String, String> divisionsImages = {
    "Хвойные": "assets/division/pinophyta.jpg",
    "Покрытосеменные": "assets/division/magnoliophyta.jpg",
    "Цветковые": "assets/division/magnoliophyta.jpg"
  };
  static Map<String, String> classesImages = {
    "Pinopsida": "assets/class/pinopsida.jpg",
    "Magnoliopsida": "assets/class/magnoliopsida.jpg",
    "Liliopsida": "assets/class/liliopsida.jpg"
  };
}
