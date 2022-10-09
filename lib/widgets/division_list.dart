import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/material.dart';
import 'package:libotanic/models/plant_class.dart';
import 'package:libotanic/test_info.dart';
import 'package:libotanic/widgets/plant_category_card.dart';

import '../models/division.dart';

class DivisionList extends StatelessWidget {
  final Division division;

  const DivisionList(this.division, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<PlantClass> classes = TestInfo.classes[division]!;
    return Expanded(
      child: ListView.builder(
        itemCount: classes.length,
        itemBuilder: (context, id) {
          return ExpansionWidget(
            initiallyExpanded: true,
            titleBuilder:
                (double animationValue, _, bool isExpaned, toogleFunction) {
              return InkWell(
                  onTap: toogleFunction,
                  child: PlantCategoryCard(category: classes[id]));
            },
            content: Text("Expanded"),
          );
          return ExpansionTile(
            controlAffinity: ListTileControlAffinity.platform,
            title: PlantCategoryCard(category: classes[id]),
          );
        },
      ),
    );
  }
}
