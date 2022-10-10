import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:libotanic/models/plant_class.dart';
import 'package:libotanic/presentation/places_list_page.dart';
import 'package:libotanic/widgets/background_widget.dart';
import 'package:libotanic/widgets/plant_name_widget.dart';

import '../../models/simple_plant.dart';
import '../../presentation/plant_detail_page.dart';
import '../../test_info.dart';

class PlantClassList extends StatelessWidget {
  final PlantClass plantClass;

  const PlantClassList({Key? key, required this.plantClass}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<SimplePlant> plants = TestInfo.plantsMap[plantClass]!;
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: plants.length,
        itemBuilder: (context, id) {
          return PlantNameWidget(
            plant: plants[id],
            onTap: () => SchedulerBinding.instance.addPostFrameCallback((_) {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => BackgroundWidget(
                        page: PlantDetailPage(
                            plant: TestInfo.extendedPlantsMap[plants[id].id]!),
                      ),));
            },),
                /*() /*{debugPrint("testInfo");} */=> Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => BackgroundWidget(
                  page: PlantDetailPage(
                      plant: TestInfo.extendedPlantsMap[plants[id].id]!),
                ),
              ),
            ),*/
          );
        },
      ),
    );
  }
}
