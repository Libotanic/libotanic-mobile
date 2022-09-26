import 'package:libotanic/models/plant_class.dart';

import 'ordo.dart';

class SimplePlant {
  final Ordo ordo;
  final PlantClass plantClass;
  final String nameRus;
  final String nameLat;

  SimplePlant(this.ordo, this.plantClass, this.nameRus, this.nameLat);
}