import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ModeChangingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: gesture detection
    return RichText(
      text: TextSpan(
        text: "Список  ",
        children: [
          WidgetSpan(
            child: Image.asset("assets/icons/flag.png", width: 25,),
          )
        ],
        style: Theme.of(context).textTheme.labelSmall
      ),
    );
  }
}
