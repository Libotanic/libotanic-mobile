import 'package:flutter/material.dart';
import 'package:libotanic/widgets/lists/plants_list.dart';

import '../widgets/plants_list_menu/plant_list_menu.dart';

class PlantsPage extends StatelessWidget {
  const PlantsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        PlantListMenu(),
        //SizedBox(height: 8,),
        PlantsList()
      ],
    );
  }
}
