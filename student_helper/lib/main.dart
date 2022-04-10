import 'package:flutter/material.dart';
import 'package:student_helper/text_to_code/text_to_code.dart';

import 'home_related/home.dart';
import 'package:student_helper/cover_letter/cover_letter_screen.dart';
import 'package:student_helper/splash%20screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TextToCode(),
    );
  }
}
