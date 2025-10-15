import 'package:flutter/material.dart';
import 'package:flutter_app/screen/ecomers/main_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: GoogleFonts.ubuntu().fontFamily),
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
