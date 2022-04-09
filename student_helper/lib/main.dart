import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_helper/layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login',
      theme: ThemeData(
        // scaffoldBackgroundColor: light,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
        primarySwatch: Colors.blue,
      ),
      home: SiteLayout(),
    );
  }
}
