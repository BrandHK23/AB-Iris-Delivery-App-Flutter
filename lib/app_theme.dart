import 'package:flutter/material.dart';

class AppTheme {
  // Paleta de Colores
  static const Color irisBlue = Color(0xFF01cafe);  // Azul Iris
  static const Color irisShadowBlue = Color(0xFF00a9f4); // Azul Oscuro Iris
  static const Color irisGreen = Color(0xFF00d2b1); // Verde Iris
  static const Color irisShadowGreen = Color(0xFF01ad87); // Verde Oscuro Iris
  static const Color irisOrange = Color(0xFFff8b36);   // Naranja Iris
  static const Color irisShadowOrange = Color(0xFFde7020);  // Naranja Oscuro Iris
  static const Color irisYellow = Color(0xFFfed229);     // Amarillo Iris
  static const Color irisShadowYellow = Color(0xFFf9b60f);  // Amarillo Oscuro Iris
  static const Color irisPurple = Color(0xFF807ee2);    // Morado Iris
  static const Color irisShadowPurple = Color(0xFF5a4fcf);  // Morado Oscuro Iris
  static const Color irisPink = Color(0xFFff0062); // Rosa Iris
  static const Color irisShadowPink = Color(0xFF8d011d);  // Rosa Oscuro Iris
  static const Color irisBackground = Color(0xFF080e62);  // Azul Fondo Iris
  static const Color irisBackgroundLight = Color(0xFFbfedfa);  // Azul Fondo Claro Iris

  static ThemeData get theme {
    return ThemeData(
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: irisBlue, // Azul Claro Iris
        onPrimary: irisGreen, // Verde Iris sobre Azul Claro
        secondary: irisShadowBlue, // Azul Oscuro Iris
        onSecondary: irisYellow, // Amarillo Iris sobre Azul Oscuro
        error: irisPink, // Rosa Iris como color de error
        onError: irisShadowPink, // Rosa Oscuro Iris sobre Rosa
        background: irisBackground, // Azul Fondo Iris
        onBackground: irisShadowPurple, // Morado Oscuro Iris sobre fondo
        surface: irisPurple, // Morado Iris para superficies
        onSurface: irisOrange, // Naranja Iris sobre Morado
      ),
      primaryColor: irisBackground,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        color: irisShadowBlue,
        titleTextStyle: TextStyle(color: irisYellow, fontSize: 20, fontWeight: FontWeight.bold),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: irisOrange,
        foregroundColor: irisShadowOrange,
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: irisShadowYellow, // Texto Amarillo Oscuro
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          foregroundColor: irisShadowGreen, backgroundColor: irisGreen, // Texto Verde Oscuro Iris
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: irisShadowPurple, fontSize: 24, fontWeight: FontWeight.bold),
        bodyLarge: TextStyle(color: irisBackground, fontSize: 16),
        titleLarge: TextStyle(color: irisShadowBlue, fontSize: 20, fontWeight: FontWeight.bold),
      ),
    );
  }
}
