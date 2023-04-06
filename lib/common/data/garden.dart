import 'package:freezed_annotation/freezed_annotation.dart';

part 'garden.g.dart';

@JsonSerializable()
class Garden {
  Garden(this.id, this.name, this.gardenType, this.imageUrl);
  @JsonKey(name: 'id')
  final int? id;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'gardenType')
  final String gardenType;
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  factory Garden.fromJson(Map<String, dynamic> json) =>
      _$GardenFromJson(json);

  Map<String, dynamic> toJson() => _$GardenToJson(this);
}