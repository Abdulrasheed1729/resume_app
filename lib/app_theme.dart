import 'package:flutter/material.dart';
import 'package:resume_app/colors.dart';

///
class AppTheme {
  /// The [ThemeData] for the `darkMode` of the app
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: deepBlack,
    navigationBarTheme: NavigationBarThemeData(
      elevation: 0,
      backgroundColor: Colors.grey.shade900,
      indicatorColor: grey,
      surfaceTintColor: lightGrey,
      labelTextStyle: MaterialStateTextStyle.resolveWith(
        (states) => const TextStyle(color: lightGrey),
      ),
    ),
    cardTheme: const CardTheme(
      color: grey,
      elevation: 2,
    ),
    chipTheme: const ChipThemeData(backgroundColor: grey),
    textTheme: const TextTheme(),
  );

  ///
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    navigationBarTheme: NavigationBarThemeData(
      elevation: 0,
      backgroundColor: Colors.white,
      indicatorColor: Colors.brown,
      surfaceTintColor: lightGrey,
      labelTextStyle: MaterialStateTextStyle.resolveWith(
        (states) => const TextStyle(color: lightGrey),
      ),
      iconTheme: MaterialStateProperty.resolveWith(
        (states) => const IconThemeData(color: Colors.white),
      ),
    ),
    cardTheme: const CardTheme(
      color: Colors.brown,
      elevation: 2,
    ),
    textTheme: const TextTheme(),
    chipTheme: const ChipThemeData(backgroundColor: Colors.brown),
  );
}
