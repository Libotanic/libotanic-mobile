import 'package:libotanic/models/division.dart';
import 'package:libotanic/models/plant_category.dart';

class PlantClass extends PlantCategory {
  final Division division;

  const PlantClass(String name, String imageUrl, this.division)
      : super(name, imageUrl);
}
