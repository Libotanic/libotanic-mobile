import 'package:flutter/material.dart';

import '../../presentation/search_page.dart';
import '../background_widget.dart';

//TODO: little copypaste with returnButton
class SearchButton extends StatelessWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const BackgroundWidget(
                page: SearchPage(),
              ),));
      }, //TODO: searching
      icon: Image.asset(
        "assets/icons/search.png",
        width: 25,
      ),
    );
  }
}
