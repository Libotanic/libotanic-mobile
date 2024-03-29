
import 'division.dart';
import 'plant_category.dart';

class PlantClass extends PlantCategory {
  final Division division;

  const PlantClass(
      {required String nameRus,
      required String imageURL,
      required this.division,
      String? nameLat})
      : super(nameRus: nameRus, imageURL: imageURL, nameLat: nameLat);


}
