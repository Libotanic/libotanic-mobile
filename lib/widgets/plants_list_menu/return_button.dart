import 'package:flutter/material.dart';

class ReturnButton extends StatelessWidget {
  const ReturnButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => Navigator.of(context).pop(), //TODO: pop navigation
      icon: Image.asset(
        "assets/icons/back_arrow.png",
        width: 25,
      ),
    );
  }
}
