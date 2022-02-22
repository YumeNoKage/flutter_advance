import 'package:flutter/material.dart';
import 'package:flutter_advance/pages/splash_page.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Advance',
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(),
        // fontFamily: ,
        primarySwatch: Colors.blue,
      ),
      home: const SplashPage(),
    );
  }
}
