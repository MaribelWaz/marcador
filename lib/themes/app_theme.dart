import 'package:flutter/material.dart';

//Paleta de colores y tema global de la app
class AppTheme {
  static const Color fondo = Color(0xFF131417);
  static const Color azul = Color(0xFF3B82F6);
  static const Color azulOscuro = Color(0xFF2E62B5);
  static const Color rojo = Color(0xFFDC2626);
  static const Color rojoOscuro = Color(0xFF9B2222);
  static const Color gris = Color(0xFF333333);

  static ThemeData get tema => ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: fondo,
  );
}

