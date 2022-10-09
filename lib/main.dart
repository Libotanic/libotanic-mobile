import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:libotanic/presentation/places_list_page.dart';
import 'package:libotanic/widgets/background_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Material(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          textTheme: TextTheme(
            headline1: GoogleFonts.raleway(
              fontWeight: FontWeight.w600,
              fontSize: 32,
              color: Colors.white,
            ),
            headline2: GoogleFonts.raleway(
              fontSize: 27,
              color: Colors.white,
            ),
            headline3: GoogleFonts.raleway(
              fontSize: 20,
              color: Colors.white,
            ),
            headline4: GoogleFonts.raleway(
              fontWeight: FontWeight.w500,
              fontSize: 27,
              color: Colors.black,
            ),
            subtitle2: GoogleFonts.raleway(
              fontSize: 20,
              color: const Color(0xff828282),
            ),
            headline6: GoogleFonts.raleway(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Colors.black,
            ),
          ),
        ),
        home: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const BackgroundWidget(page: PlacesListPage());
  }
}
