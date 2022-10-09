import 'package:libotanic/models/plant_class.dart';

class SimplePlant {
  final int id;
  final PlantClass plantClass;
  final String nameRus;
  final String nameLat;

  const SimplePlant(this.id, this.plantClass, this.nameRus, this.nameLat);
}
