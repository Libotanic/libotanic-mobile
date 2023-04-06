import 'package:flutter/material.dart';
import 'package:libotanic/wiki_usage/presentation/widgets/lists/plants_list.dart';
import 'package:libotanic/wiki_usage/presentation/widgets/plants_list_menu/plant_list_menu.dart';

class GardenPlantsPage extends StatelessWidget {
  const GardenPlantsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
    child:Column(
      children: const [
        PlantListMenu(),
        //SizedBox(height: 8,),
        Expanded(child: PlantsList())
      ],
    ));
  }
}
