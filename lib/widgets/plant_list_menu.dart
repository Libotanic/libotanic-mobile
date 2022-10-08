import 'package:flutter/material.dart';
import 'package:libotanic/widgets/return_button.dart';
import 'package:libotanic/widgets/search_button.dart';

import 'mode_changing_button.dart';

class PlantListMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const ReturnButton(),
          ModeChangingButton(),
          const SearchButton()
        ],
      ),
    );
  }
}