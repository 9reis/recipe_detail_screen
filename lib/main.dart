import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:recipe_detail_screen/config/colors.dart';
import 'package:recipe_detail_screen/screens/recipe_detail/recipe_detail_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: RecipeDetailScreen(),
    );
  }
}

final ThemeData kAppThemeData = _buildThemeData();

ThemeData _buildThemeData() {
  final base = ThemeData.light();
  final baseTextTheme = GoogleFonts.interTextTheme(base.textTheme);

  return base.copyWith(
    scaffoldBackgroundColor: Colors.white,
    textTheme: baseTextTheme.copyWith(
      titleLarge: baseTextTheme.titleLarge!.copyWith(
        height: 32 / 22,
        fontWeight: FontWeight.bold,
        color: kMainTextColor,
        letterSpacing: 0.5,
      ),
      titleMedium: baseTextTheme.titleMedium!.copyWith(
        fontSize: 17,
        height: 27 / 17,
        color: kMainTextColor,
        fontWeight: FontWeight.bold,
        letterSpacing: 0.5,
      ),
      titleSmall: baseTextTheme.titleSmall!.copyWith(
        fontSize: 15,
        height: 25 / 15,
        fontWeight: FontWeight.bold,
        color: kMainTextColor,
        letterSpacing: 0.5,
      ),
      bodyLarge: baseTextTheme.bodyLarge!.copyWith(
        fontSize: 17,
        height: 27 / 17,
        fontWeight: FontWeight.bold,
        color: kMainTextColor,
        letterSpacing: 0.5,
      ),
      bodyMedium: baseTextTheme.bodyMedium!.copyWith(
        fontSize: 15,
        height: 25 / 15,
        color: kMainTextColor,
        letterSpacing: 0.5,
      ),
      bodySmall: baseTextTheme.bodySmall!.copyWith(
        height: 15 / 12,
        color: kMainTextColor,
        letterSpacing: 0.5,
      ),
    ),
  );
}
