import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:searchai/pages/home_page.dart';
import 'package:searchai/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.background,
        textTheme: GoogleFonts.comfortaaTextTheme(
          ThemeData.dark().textTheme,
        ).copyWith(
          bodyMedium: TextStyle(fontSize: 16, color: AppColors.whiteColor),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.submitButton),
      ),
      home: HomePage(),
    );
  }
}
