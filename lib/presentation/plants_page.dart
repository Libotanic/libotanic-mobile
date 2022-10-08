import 'package:flutter/material.dart';
import 'package:libotanic/widgets/plants_list.dart';

import '../widgets/plant_list_menu.dart';

class PlantsPage extends StatelessWidget {
  const PlantsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PlantListMenu(),
        //SizedBox(height: 8,),
        const PlantsList()
      ],
    );
  }
}
