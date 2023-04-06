import 'package:flutter/material.dart';

import '../../../domain/service/plants_service.dart';
import '../../division_page.dart';
import '../background_widget.dart';
import '../plant_category_card.dart';

class GroupedPlantsList extends StatelessWidget {
  const GroupedPlantsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FutureBuilder(
        future: PlantsService.fetchDivisions(),
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) => ListView.builder(
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
