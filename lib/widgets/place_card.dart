import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/place.dart';

class PlaceCard extends StatelessWidget {
  final double height, radius;
  final Place place;

  const PlaceCard({Key? key, required this.place, this.height = 260, this.radius = 25}) : super(key: key);

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
              offset: Offset(0, 4), // changes position of shadow
            )
          ],
          image: DecorationImage(image: NetworkImage(place.imageURL,), fit: BoxFit.cover,),
        ),
        child: Stack(alignment: Alignment.bottomCenter, children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(radius),
            child: Stack(children: [
              Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0, 0.7, 1.0,],
                  colors: [Color(0x00000000), Color(0x2A000000), Color(0xFF000000),],
                )),
              )
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              place.name,
              style: GoogleFonts.raleway(
                color: Colors.white,
                fontSize: 20,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],),
      ),);
  }
}
