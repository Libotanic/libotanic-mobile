import 'package:flutter/material.dart';
import 'package:libotanic/service/plants_service.dart';
import 'package:libotanic/widgets/background_widget.dart';
import 'package:libotanic/widgets/plant_category_card.dart';

import '../../models/division.dart';
import '../../presentation/division_page.dart';
import '../../test_info.dart';

class GroupedPlantsList extends StatelessWidget {
  const GroupedPlantsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
        future: PlantsService.fetchDivisions(),
        builder: (context, AsyncSnapshot<List<Division>> snapshot) => ListView.builder(
          itemCount: snapshot.hasData? snapshot.data?.length : 0,
          itemBuilder: (context, id) {
            return GestureDetector(
              child: PlantCategoryCard(
                category: snapshot.data?[id],
              ),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BackgroundWidget(
                    page: DivisionPage(snapshot.data![id]),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
