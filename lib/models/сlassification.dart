import 'package:libotanic/models/plant_category.dart';
import 'package:libotanic/models/plant_class.dart';

class Classification {
  final PlantClass plantClass;
  final PlantCategory order;
  final PlantCategory family;
  Classification(this.plantClass, this.order, this.family);
  @override
  String toString() {
    return "${plantClass.division}\n$plantClass\n$order\n$family";
  }
}