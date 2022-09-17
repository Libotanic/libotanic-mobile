import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:libotanic/presentation/places_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
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
          child: Column(
            children: [
              const SizedBox(height: 16,),
              Text(
                "Libotanic",
                style: GoogleFonts.raleway(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 32,
                ),
              ),
              const SizedBox(height: 16,),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color(0xFFF6EEDD),
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: PlacesListPage(),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
