import 'package:libotanic/models/plant_class.dart';
import 'package:libotanic/models/simple_plant.dart';

import 'models/division.dart';
import 'models/place.dart';

class TestInfo {
  static List<Place> places = [
    Place(0, "Ботанический сад Петра Великого",
        "https://upload.wikimedia.org/wikipedia/commons/a/ac/%D0%91%D0%BE%D1%82%D0%B0%D0%BD%D0%B8%D1%87%D0%B5%D1%81%D0%BA%D0%B8%D0%B9_%D1%81%D0%B0%D0%B4_%D0%A0%D0%90%D0%9D%2C_%D0%BB%D0%B5%D1%82%D0%BE_2010%2C_%D0%BE%D1%80%D0%B0%D0%BD%D0%B6%D0%B5%D1%80%D0%B5%D0%B8_%D0%B8_%D1%86%D0%B2%D0%B5%D1%82%D0%BD%D0%B8%D0%BA.jpg")
  ];

  static List<Division> divisions = [
    const Division("Хвойные", "assets/division/pinophyta.jpg"),
  ];

  static List<PlantClass> classes = [PlantClass("Пинопсиды", "", divisions[0])];

  static Map<PlantClass, List<SimplePlant>> plantsMap = {
    classes[0]: [
      SimplePlant(classes[0], "Пихта цельнолистная", "Abies holophylla")
    ],
  };
}
