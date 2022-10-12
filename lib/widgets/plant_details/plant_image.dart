import 'package:flutter/material.dart';

class PlantImage extends StatelessWidget {
  final String? imageURL;

  const PlantImage({Key? key, this.imageURL}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(16), child: imageURL == null
        ? Text(
      "К сожалению, у нас нет картинки этого растения.",
      style: Theme.of(context).textTheme.subtitle2,
    )
        : Image.asset(imageURL!),
    ); //TODO: Why should I check imageURL
  }
}
