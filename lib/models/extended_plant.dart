import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libotanic/models/%D1%81lassification.dart';
import 'package:libotanic/models/division.dart';
import 'package:libotanic/models/plant_class.dart';
import 'package:libotanic/models/plant_detail.dart';
import 'package:libotanic/models/simple_plant.dart';

class ExtendedPlant {
  late int id;
  late PlantClass plantClass;
  late String nameRus;
  late String nameLat;
  String? imageURL;
  String? description;
  Classification? classification;
  List<PlantDetail>? details;

  ExtendedPlant(this.id, this.plantClass, this.nameRus, this.nameLat,
      {this.imageURL, this.description, this.classification, this.details});

  ExtendedPlant.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'] as int;
    plantClass = PlantClass(
      division: Division(
          nameRus: parsedJson['otdel'],
          imageURL: "assets/division/pinophyta.jpg"),
      nameRus: parsedJson['otrad'],
      imageURL: "assets/class/pinopsida.jpg",
    );
    nameRus = parsedJson['rus_name'];
    nameLat = parsedJson['lat_name'];
  }
}
