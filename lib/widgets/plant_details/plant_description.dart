import 'package:flutter/material.dart';
import 'package:libotanic/widgets/info_container.dart';

class PlantDescription extends StatelessWidget {
  final String? description;

  const PlantDescription({super.key, this.description});
  @override
  Widget build(BuildContext context) {
    return InfoContainer(
      title: "Историческая справка",
      child: description != null
          ? Text(
        "К сожалению, у нас нет описания этого растения.",
        style: Theme.of(context).textTheme.subtitle2,
      )
          : Text(description!, style: Theme.of(context).textTheme.bodyText1),
    );
  }

}