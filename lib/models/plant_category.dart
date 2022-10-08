import 'package:libotanic/models/plant_class.dart';

abstract class PlantCategory {
  final String name, imageURL;
  const PlantCategory(this.name, this.imageURL);
}