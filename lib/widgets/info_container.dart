import 'package:flutter/material.dart';

class InfoContainer extends StatelessWidget {
  final String title;
  final Widget? child;

  const InfoContainer({Key? key, this.child, required this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: const Color(0xFFEADFC9),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.25),
              spreadRadius: 2,
              blurRadius: 4,
              offset: const Offset(0, 4),
            )
          ],
        ),
        child: child == null
            ? null
            : Column(
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  child!, //TODO: whyyy
                ],
              ),
      ),
    );
  }
}
