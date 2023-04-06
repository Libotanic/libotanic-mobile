import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libotanic/common/data/plant_name.dart';

part 'plant.g.dart';

@JsonSerializable()
class Plant {
  Plant(this.id,
      this.plantFamily,
      this.plantOrder,
      this.plantClass,
      this.plantDivision,
      this.images,
      this.description, this.name);
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'name')
  final PlantClassificationPart name;
  @JsonKey(name: 'plantFamily')
  final PlantClassificationPart plantFamily;
  @JsonKey(name: 'plantOrder')
  final PlantClassificationPart plantOrder;
  @JsonKey(name: 'plantClass')
  final PlantClassificationPart plantClass;
  @JsonKey(name: 'plantDivision')
  final PlantClassificationPart plantDivision;
  @JsonKey(name: 'plantImages')
  final List<String> images;
  @JsonKey(name:'description')
  final String? description;
  factory Plant.fromJson(Map<String, dynamic> json) =>
      _$PlantFromJson(json);

  Map<String, dynamic> toJson() => _$PlantToJson(this);

  PlantName takeName() => PlantName(
    id, name.nameRus, name.nameLat
  );
}

@JsonSerializable()
class PlantClassificationPart {
  PlantClassificationPart(this.id, this.nameRus, this.nameLat);
  @JsonKey(name: "id")
  final int? id;
  @JsonKey(name: "nameRus")
  final String nameRus;
  @JsonKey(name: "nameLat")
  final String nameLat;
  factory PlantClassificationPart.fromJson(Map<String, dynamic> json) =>
      _$PlantClassificationPartFromJson(json);

  Map<String, dynamic> toJson() => _$PlantClassificationPartToJson(this);
}