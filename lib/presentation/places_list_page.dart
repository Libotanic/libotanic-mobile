import 'package:flutter/material.dart';
import 'package:libotanic/presentation/plants_page.dart';
import 'package:libotanic/app_state.dart';
import 'package:libotanic/test_info.dart';
import 'package:libotanic/widgets/background_widget.dart';

import '../widgets/place_card.dart';

class PlacesListPage extends StatelessWidget {
  const PlacesListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
      child: ListView.builder(
        itemCount: TestInfo.places.length,
        itemBuilder: (context, id) {
          return GestureDetector(
            child: PlaceCard(
              place: TestInfo.places[id],
            ),
            onTap: () {
              AppState.setState(id);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const BackgroundWidget(
                    page: PlantsPage(),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
