abstract class PlantCategory {
  final String nameRus, imageURL;
  final String? nameLat;

  const PlantCategory({required this.nameRus, required this.imageURL, this.nameLat});
  @override
  String toString() {
    return "$nameRus | $nameLat";
  }

  @override
  bool operator ==(Object other) =>
      other is PlantCategory &&
          other.runtimeType == runtimeType &&
          other.nameRus == nameRus;

  @override
  int get hashCode => nameRus.hashCode;
}
