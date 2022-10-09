import 'package:flutter/material.dart';

import 'grouped_plants_list.dart';

enum Mode { map, alphabeticalList, groupedList }

class PlantsList extends StatefulWidget {
  final Mode mode;

  const PlantsList({Key? key, this.mode = Mode.groupedList}) : super(key: key);

  @override
  State<StatefulWidget> createState() => PlantsListState();
}

class PlantsListState extends State<PlantsList> {
  late Mode mode = Mode.groupedList;

  @override
  void setState(VoidCallback fn) {
    mode = widget.mode;
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    switch (mode) {
      case Mode.map:
        // TODO: Handle this case.
        return Container();
      case Mode.alphabeticalList:
        // TODO: Handle this case.
        return Container();
      case Mode.groupedList:
        return const GroupedPlantsList();
    }
  }
}
