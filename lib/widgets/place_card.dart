import 'package:flutter/material.dart';

import '../models/place.dart';

class PlaceCard extends StatelessWidget {
  final Place place;
  const PlaceCard({Key? key, required this.place}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Stack(
          children: [
            Image.network(place.imageURL),
            Align(alignment: Alignment.bottomCenter,child: Text(place.name),)
          ]
      ),
    );
  }
}