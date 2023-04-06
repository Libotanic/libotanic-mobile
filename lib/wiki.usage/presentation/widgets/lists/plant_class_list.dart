import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import '../../../data/extended_plant.dart';
import '../../../data/plant_class.dart';
import '../../../domain/service/plants_service.dart';
import '../../plant_detail_page.dart';
import '../background_widget.dart';
import '../common/plant_name_widget.dart';

class PlantClassList extends StatelessWidget {
  final PlantClass plantClass;

  const PlantClassList({Key? key, required this.plantClass}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //List<SimplePlant> plants = TestInfo.plantsMap[plantClass]!;
    return FutureBuilder(
      future: PlantsService.fetchPlantsList(plantClass),
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) => Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: snapshot.hasData ? ListView.builder(
          shrinkWrap: true,
          itemCount: snapshot.data!.length,
          itemBuilder: (context, id) {
            ExtendedPlant? plant = snapshot.data![id];
            /*return PlantNameWidget(
              plant: plant,
              onTap: () => SchedulerBinding.instance.addPostFrameCallback((_) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => BackgroundWidget(
                          page: PlantDetailPage(
                              plant: plant!),
                        ),));
              },),
            );*/
          },
        ) : Container(),
      ),
    );
  }
}
