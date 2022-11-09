import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Usf {
  static const MaterialColor color = MaterialColor(
    _UsfPrimaryValue,
    <int, Color>{
      50: Color(0X1F000000),
      100: Color(0x42000000),
      200: Color(0x61000000),
      300: Color(0x73000000),
      400: Color(0x8A000000),
      500: Color(_UsfPrimaryValue),
      600: Color(0xDD000000),
    },
  );
  // ignore: constant_identifier_names
  static const int _UsfPrimaryValue = 0XFF000000;

  static const Color background = Color.fromARGB(255, 21, 113, 21);

  static ButtonStyle outlineButtonStyle({
    Color color = Colors.white,
    double padding = 24,
  }) {
    return OutlinedButton.styleFrom(
      foregroundColor: color,
      padding: EdgeInsets.symmetric(vertical: padding),
      side: BorderSide(color: color),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
    );
  }

  static ThemeData theme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: background,
    primarySwatch: color,
    primaryColor: color,
    textTheme: GoogleFonts.robotoMonoTextTheme(
      ThemeData.dark().textTheme,
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: outlineButtonStyle(),
    ),
    appBarTheme: ThemeData.dark().appBarTheme.copyWith(
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.transparent,
          titleTextStyle: GoogleFonts.roboto(fontSize: 25),
        ),
  );
}
