import 'package:flutter/material.dart';
import 'package:libotanic/wiki_usage/presentation/widgets/plants_list_menu/return_button.dart';
import 'package:libotanic/wiki_usage/presentation/widgets/plants_list_menu/search_button.dart';

import 'mode_changing_button.dart';

class PlantListMenu extends StatelessWidget {
  const PlantListMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          ReturnButton(),
          ModeChangingButton(),
          SearchButton(),
        ],
      ),
    );
  }
}
