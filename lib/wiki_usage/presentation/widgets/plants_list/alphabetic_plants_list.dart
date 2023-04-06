import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libotanic/common/domain/plant_detailes/plant_details_bloc.dart';
import 'package:libotanic/common/domain/plants/plants_bloc.dart';
import 'package:libotanic/wiki_usage/presentation/widgets/common/plant_name_widget.dart';
import 'package:provider/provider.dart';

import '../../../../common/data/plant_name.dart';

class AlphabeticPlantsList extends StatelessWidget {
  const AlphabeticPlantsList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlantsBloc, PlantsState>(builder: (context, state) =>
        state.when(
        initial: () => Container(),
          loading: () => Container(),
          loaded: (plants) => plantsList(plants))
    );
  }

  Widget plantsList(List<PlantName> plants) => ListView.builder(
    itemCount: plants.length,
      itemBuilder: (context, id) {
      final bloc = Provider.of<PlantDetailsBloc>(context);
        return GestureDetector( //TODO extract GestureDetector
          child: PlantNameWidget(
            plant: plants[id],
          ),
          onTap: () {
            bloc.add(PlantDetailsEvent.load(id: plants[id].id));
            //GardenState.enterGarden(gardens[id].id);
            Navigator.of(context).pushNamed("/plant_details");
          },
        );
      },

  );

}
