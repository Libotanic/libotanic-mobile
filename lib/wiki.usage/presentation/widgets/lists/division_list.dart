import 'package:expansion_widget/expansion_widget.dart';
import 'package:flutter/material.dart';
import 'package:libotanic/wiki.usage/presentation/widgets/lists/plant_class_list.dart';

import '../../../data/division.dart';
import '../../../data/plant_class.dart';
import '../../../domain/service/plants_service.dart';
import '../plant_category_card.dart';

class DivisionList extends StatelessWidget {
  final Division division;

  const DivisionList({Key? key, required this.division}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //List<PlantClass> classes = TestInfo.classes[division]!;
    return Expanded(
      child: FutureBuilder(
        future: PlantsService.fetchClasses(division),
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) =>
            snapshot.hasData ? ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, id) {
              return ExpansionWidget(
                titleBuilder:
                    (double animationValue, _, bool isExpanded, toggleFunction) {
                  return InkWell(
                      onTap: toggleFunction,
                      child: PlantCategoryCard(category: snapshot.data?[id]));
                },
                maintainState: true,
                content: PlantClassList(
                  plantClass: snapshot.data![id],
                ),
              ) ;
            },
          ): Container()
      ),
    );
  }
}
