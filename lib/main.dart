import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:libotanic/common/domain/gardens/gardens_bloc.dart';
import 'package:libotanic/common/domain/plant_detailes/plant_details_bloc.dart';
import 'package:libotanic/wiki_usage/presentation/export_all_wiki_usage_screens.dart';
import 'package:libotanic/wiki_usage/presentation/plant_detail_page.dart';
import 'package:libotanic/wiki_usage/presentation/widgets/background_widget.dart';
import 'package:provider/provider.dart';

import 'common/domain/plants/plants_bloc.dart';

void main() {
  runZonedGuarded(
        () => runApp(MyApp()),
        (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
      print(error.toString()); // This is the message I print
    },
  );
  //runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<GardensBloc>(create: (_) => GardensBloc()..add(const GardensEvent.load())),
        Provider<PlantsBloc>(create: (_) => PlantsBloc()),
        Provider<PlantDetailsBloc>(create: (_) => PlantDetailsBloc()),
      ],
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
            bodyText1: GoogleFonts.raleway(
              fontSize: 18,
              color: Colors.black,
            ),
          ),
        ),
        routes: {
          "/gardens": (_) => const BackgroundWidget(page: GardensPage()),
          "/garden_plants": (_) =>
              const BackgroundWidget(page: GardenPlantsPage()),
          "/plant_details": (_) => const BackgroundWidget(page: PlantDetailPage()),
        },
        initialRoute: "/gardens",

      ),
    );
  }
}
