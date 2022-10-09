import 'package:flutter/material.dart';

import '../../models/сlassification.dart';
import '../info_container.dart';

class PlantClassification extends StatelessWidget {
  final Classification? classification;

  const PlantClassification({super.key, this.classification});

  @override
  Widget build(BuildContext context) {
    return InfoContainer(
      title: "Место в классификации",
      child: classification != null
          ? Text(
              "К сожалению, у нас нет классификации этого растения.",
              style: Theme.of(context).textTheme.subtitle2,
            )
          : Text(
              classification!.toString(),
              style: Theme.of(context).textTheme.bodyText1,
            ),
    );
  }
}
