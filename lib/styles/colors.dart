
import 'package:flutter/material.dart';

Map<int, Color> getSwatch(Color color) {
  final hslColor = HSLColor.fromColor(color);
  final lightness = hslColor.lightness;
  final lowDivisor = 6;

  final highDivisor = 5;

  final lowStep = (1.0 - lightness) / lowDivisor;
  final highStep = lightness / highDivisor;

  return {
    50: (hslColor.withLightness(lightness + (lowStep * 5))).toColor(),
    100: (hslColor.withLightness(lightness + (lowStep * 4))).toColor(),
    200: (hslColor.withLightness(lightness + (lowStep * 3))).toColor(),
    300: (hslColor.withLightness(lightness + (lowStep * 2))).toColor(),
    400: (hslColor.withLightness(lightness + lowStep)).toColor(),
    500: (hslColor.withLightness(lightness)).toColor(),
    600: (hslColor.withLightness(lightness - highStep)).toColor(),
    700: (hslColor.withLightness(lightness - (highStep * 2))).toColor(),
    800: (hslColor.withLightness(lightness - (highStep * 3))).toColor(),
    900: (hslColor.withLightness(lightness - (highStep * 4))).toColor(),
  };
}

const Color primaryColor = Color(0xFF06A88E);
const Color whiteColor = Color(0xFFFFFFFF);
const Color darkGrey = Color(0xFFB8BBBF);
const Color black = Color(0xFF242424);
const Color dividerColor = Color(0xFFD0D2D3);
const Color lightWhite = Color(0xFFC0C0C0);
const Color red = Color(0xFFFF3824);
const Color lightGrey = Color(0xFFF8F8F8);

const Color darkHeaderColor = Color(0xFF222D36);
const Color backgroundColor = Color(0xFF101D24);
const Color darkDividerColor = Color(0xFF2B363D);
const Color darkChatNodeColor = Color(0xFF222E35);
