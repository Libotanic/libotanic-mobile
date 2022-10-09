import 'package:flutter/material.dart';
import 'package:libotanic/models/plant_class.dart';

import '../models/simple_plant.dart';
import '../test_info.dart';

class PlantClassList extends StatelessWidget {
  final PlantClass plantClass;

  const PlantClassList({Key? key, required this.plantClass}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<SimplePlant> plants = TestInfo.plantsMap[plantClass]!;
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: plants.length,
        itemBuilder: (context, id) {
          return ListTile(
            title: Text(
              plants[id].nameRus,
              style: Theme.of(context).textTheme.headline4,
            ),
            subtitle: Text(
              plants[id].nameLat,
              style: Theme.of(context).textTheme.subtitle2,
            ),
          );
        },
      ),
    );
  }
}
