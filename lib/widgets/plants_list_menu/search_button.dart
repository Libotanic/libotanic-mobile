import 'package:flutter/material.dart';

//TODO: little copypaste with returnButton
class SearchButton extends StatelessWidget {
  const SearchButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {}, //TODO: searching
      icon: Image.asset(
        "assets/icons/search.png",
        width: 25,
      ),
    );
  }
}
