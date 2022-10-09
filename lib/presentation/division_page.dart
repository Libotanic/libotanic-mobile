import 'package:flutter/material.dart';

import '../models/division.dart';
import '../widgets/lists/division_list.dart';
import '../widgets/plants_list_menu/plant_list_menu.dart';

class DivisionPage extends StatelessWidget {
  final Division division; //TODO: odd traversing
  const DivisionPage(this.division, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const PlantListMenu(),
        DivisionList(
          division: division,
        ),
      ],
    );
  }
}
