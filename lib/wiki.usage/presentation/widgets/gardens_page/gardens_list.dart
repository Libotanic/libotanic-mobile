import 'package:flutter/cupertino.dart';
import 'package:libotanic/common/domain/common/app_state.dart';
import 'package:libotanic/common/domain/gardens/gardens_bloc.dart';
import 'package:provider/provider.dart';

import '../../../../common/data/garden.dart';
import '../../../../common/domain/plants/plants_bloc.dart';
import '../../../domain/app/app_state.dart';
import 'place_card.dart';

class GardensList extends StatelessWidget {
  final List<Garden> gardens;

  const GardensList({super.key, required this.gardens});
  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of<PlantsBloc>(context);
    return ListView.builder(
      itemCount: gardens.length,
      itemBuilder: (context, id) {
        return GestureDetector( //TODO extract GestureDetector
          child: PlaceCard(
            garden: gardens[id],
          ),
          onTap: () {
            bloc.add(PlantsEvent.load(id: gardens[id].id ?? 1));
            //GardenState.enterGarden(gardens[id].id);
            Navigator.of(context).pushNamed("/garden_plants");
          },
        );
      },
    );
  }

}