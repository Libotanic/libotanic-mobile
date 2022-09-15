import 'package:flutter/material.dart';
import 'package:libotanic/test_info.dart';

import '../widgets/place_card.dart';

class PlacesListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: TestInfo.places.length,
      itemBuilder: (context, id) {
      return PlaceCard(place: TestInfo.places[id],);
    },);
  }
}