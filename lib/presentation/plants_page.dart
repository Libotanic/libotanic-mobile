import 'package:flutter/material.dart';
import 'package:libotanic/models/plant_class.dart';
import 'package:libotanic/widgets/plant_category_card.dart';
import 'package:libotanic/widgets/plants_list.dart';

import '../test_info.dart';
import '../widgets/background_widget.dart';
import '../widgets/plant_list_menu.dart';
import 'division_page.dart';

class PlantsPage extends StatelessWidget {
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