import 'package:flutter/material.dart';
import 'package:flutterui/pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
       
      colorSchemeSeed: Color(0xff5a73d8),
      textTheme: GoogleFonts.plusJakartaSansTextTheme(Theme.of(context).textTheme
      )
      ),
      home: HomePage()
    );
  }
}
