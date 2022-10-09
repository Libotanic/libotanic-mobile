import 'package:flutter/material.dart';
import 'package:libotanic/models/plant_category.dart';

class PlantCategoryCard extends StatelessWidget {
  final PlantCategory category;

  const PlantCategoryCard({
    Key? key,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.25),
            spreadRadius: 2,
            blurRadius: 4,
            offset: const Offset(0, 4), // changes position of shadow
          )
        ],
        image: DecorationImage(
          image: AssetImage(category.imageURL),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Stack(
            children: [
              Container(
                color: const Color(0x66000000),
              )
            ],
          ),
          Text(
            //TODO: style copypaste
            category.name,
            style: Theme.of(context).textTheme.headline2,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
