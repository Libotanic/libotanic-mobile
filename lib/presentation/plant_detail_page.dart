import 'package:flutter/material.dart';
import 'package:libotanic/models/extended_plant.dart';

import '../widgets/plant_details/plant_classification.dart';
import '../widgets/plant_details/plant_description.dart';
import '../widgets/plant_details/plant_image.dart';
import '../widgets/plant_name_widget.dart';
import '../widgets/plants_list_menu/plant_list_menu.dart';

class PlantDetailPage extends StatelessWidget {
  final ExtendedPlant plant;

  const PlantDetailPage({Key? key, required this.plant}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PlantListMenu(),
        PlantNameWidget(plant: plant),
        PlantImage(imageURL: plant.imageURL),
        PlantDescription(description: plant.description),
        PlantClassification(classification: plant.classification),
        //PlantDetails(plant.details),
      ]
    );
  }

}