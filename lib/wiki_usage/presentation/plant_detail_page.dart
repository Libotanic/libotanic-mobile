import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:libotanic/common/domain/plant_detailes/plant_details_bloc.dart';
import 'package:libotanic/wiki_usage/presentation/widgets/common/plant_name_widget.dart';
import 'package:libotanic/wiki_usage/presentation/widgets/plant_details/plant_description.dart';
import 'package:libotanic/wiki_usage/presentation/widgets/plant_details/plant_image.dart';
import 'package:libotanic/wiki_usage/presentation/widgets/plants_list_menu/plant_list_menu.dart';

class PlantDetailPage extends StatelessWidget {

  const PlantDetailPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlantDetailsBloc, PlantDetailsState>(
      builder: (context, state) {
        return state.when(loading: () => Container(), initial: () => Container(),
            loaded: (plant) => SingleChildScrollView(child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  const PlantListMenu(),
                  PlantNameWidget(plant: plant.takeName()),
                  PlantImage(imageURL: plant.images.isNotEmpty ? plant.images[0] : "https://img.freepik.com/free-vector/tree_1308-36471.jpg?w=1480&t=st=1680756870~exp=1680757470~hmac=9be75b15b9ed3542c675812e57af54e1ecfae056448f36f7a521a70b39242bf0"),
                  PlantDescription(description: plant.description),
                  //PlantClassification(classification: plant.classification),
                  //PlantDetails(plant.details),
                ]
            ))
        )
        ;
      }
    );
  }

}