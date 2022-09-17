import 'package:flutter/material.dart';
import 'package:libotanic/presentation/plants_list_page.dart';
import 'package:libotanic/test_info.dart';

import '../widgets/place_card.dart';

class PlacesListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      child: ListView.builder(
        itemCount: TestInfo.places.length,
        itemBuilder: (context, id) {
          return GestureDetector(child: PlaceCard(place: TestInfo.places[id],),
            onTap: () =>
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        PlantsListPage())),);
        },),
    );
  }
}