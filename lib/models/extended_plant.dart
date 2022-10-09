import 'package:libotanic/models/%D1%81lassification.dart';
import 'package:libotanic/models/plant_detail.dart';
import 'package:libotanic/models/simple_plant.dart';

class ExtendedPlant extends SimplePlant {
  final String? imageURL;
  final String? description;
  final Classification? classification;
  final List<PlantDetail>? details;

  const ExtendedPlant(super.id, super.plantClass, super.nameRus, super.nameLat,
      {this.imageURL, this.description, this.classification, this.details});
}
