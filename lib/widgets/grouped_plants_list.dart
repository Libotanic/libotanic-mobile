import 'package:flutter/material.dart';
import 'package:libotanic/widgets/plant_category_card.dart';

import '../presentation/division_page.dart';
import '../test_info.dart';

class GroupedPlantsList extends StatelessWidget {
  const GroupedPlantsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: TestInfo.divisions.length,
        itemBuilder: (context, id) {
          return GestureDetector(
            child: PlantCategoryCard(
              category: TestInfo.divisions[id],
            ),
            onTap: () => Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => DivisionPage())),
          );
        },
      ),
    );
  }
}
