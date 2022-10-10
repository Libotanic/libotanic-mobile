import 'package:flutter/material.dart';

import '../models/simple_plant.dart';

class PlantNameWidget extends StatelessWidget {
  final SimplePlant plant;
  final Function()? onTap;

  const PlantNameWidget({Key? key, required this.plant, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        plant.nameRus,
        style: Theme.of(context).textTheme.headline4,
      ),
      subtitle: Text(
        plant.nameLat,
        style: Theme.of(context).textTheme.subtitle2,
      ),
      onTap: onTap == null? null : onTap!,
    );
  }

}