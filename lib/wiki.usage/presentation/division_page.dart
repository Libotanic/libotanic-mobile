import 'package:flutter/material.dart';
import 'package:libotanic/wiki.usage/presentation/widgets/lists/division_list.dart';
import 'package:libotanic/wiki.usage/presentation/widgets/plants_list_menu/plant_list_menu.dart';

import '../data/division.dart';

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
