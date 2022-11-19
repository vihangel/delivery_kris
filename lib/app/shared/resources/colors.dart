import 'package:flutter/material.dart';

class ColorsApp {
  static const Color primary = Color(0xFFE6D218);
  static const Color white = Color(0xFFF1F1F1);
  static const Color gray = Color(0xFFADADAD);
  // static const Color gray2 = Color(0xFF8C9199);
  static const Color black = Color.fromARGB(243, 36, 36, 38);

  static const MaterialColor primarySwatch = MaterialColor(0XFFE6D218, {
    50: Color(0XFFE6D218),
    100: Color(0XFF005c9e),
    200: Color(0XFF00528d),
    300: Color(0XFF00477b),
    400: Color(0XFF003d6a),
    500: Color(0XFF003358),
    600: Color(0XFF002946),
    700: Color(0XFF001f35),
    800: Color(0XFF001423),
    900: Color(0XFF000a12),
  });

  static final ThemeData theme = ThemeData(
    fontFamily: 'Lexend',
    visualDensity: VisualDensity.adaptivePlatformDensity,
    scaffoldBackgroundColor: black,
    primarySwatch: ColorsApp.primarySwatch,
    pageTransitionsTheme: const PageTransitionsTheme(builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    }),
    useMaterial3: true,
    canvasColor: black,
    primaryColor: primarySwatch,
    primaryColorLight: primary,
    backgroundColor: black,
    inputDecorationTheme: const InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: gray),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: gray),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red),
      ),
      labelStyle: TextStyle(color: black),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    ),
  );
}
