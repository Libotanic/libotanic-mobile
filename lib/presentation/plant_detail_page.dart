import 'package:flutter/material.dart';
import 'package:libotanic/models/extended_plant.dart';

import '../widgets/plant_details/plant_classification.dart';
import '../widgets/plant_details/plant_description.dart';
import '../widgets/plant_details/plant_image.dart';
import '../widgets/plant_name_widget.dart';

class PlantDetailPage extends StatelessWidget {
  final ExtendedPlant plant;

  const PlantDetailPage({Key? key, required this.plant}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlantNameWidget(plant: plant),
        PlantImage(imageURL: plant.imageURL),
        PlantDescription(description: plant.description),
        PlantClassification(classification: plant.classification),
        //PlantDetails(plant.details),
      ]
    );
  }

}