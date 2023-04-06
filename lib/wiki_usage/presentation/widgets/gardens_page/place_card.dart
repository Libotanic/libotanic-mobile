import 'package:flutter/material.dart';
import 'package:libotanic/common/data/garden.dart';

class PlaceCard extends StatelessWidget {
  final double height, radius;
  final Garden garden;

  const PlaceCard({
    Key? key,
    required this.garden,
    this.height = 260,
    this.radius = 25,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Container(
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(radius)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.25),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 4), // changes position of shadow
            )
          ],
          image: DecorationImage(
            image: NetworkImage(
                garden.imageUrl ??
                    "https://img.freepik.com/premium-photo/black-amp-white-garden-arc-background_199726-9601.jpg?w=2000", //TODO: default garden image
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(radius),
              child: Stack(children: [
                Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [
                      0.0,
                      0.7,
                      1.0,
                    ],
                    colors: [
                      Color(0x00000000),
                      Color(0x2A000000),
                      Color(0xFF000000),
                    ],
                  )),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                garden.name,
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
