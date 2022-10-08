import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BackgroundWidget extends StatelessWidget {
  final Widget page;

  const BackgroundWidget({Key? key, required this.page}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0, 0.15, 0.9],
              colors: [Color(0xff1fad08), Color(0xfff6eedd), Color(0xfff6eedd)],
            ),
          ),
          child: Column(children: [
            const SizedBox(
              height: 16,
            ),
            Text(
              "Libotanic",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xFFF6EEDD),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    )),
                child: page,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
