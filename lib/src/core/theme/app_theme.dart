import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:wallet/src/core/theme/app_colors.dart';

class AppTheme {
  static ThemeData light = ThemeData(
    scaffoldBackgroundColor: AppColors.lightScaffold,
    textTheme: GoogleFonts.poppinsTextTheme().apply(
      bodyColor: AppColors.lightText,
      displayColor: AppColors.lightText,
    ),
    canvasColor: AppColors.lightCanvas,
    iconTheme: IconThemeData(color: AppColors.black),
  );

  static ThemeData dark = ThemeData(
    scaffoldBackgroundColor: AppColors.darkScaffold,
    textTheme: GoogleFonts.poppinsTextTheme().apply(
      bodyColor: AppColors.darkText,
      displayColor: AppColors.darkText,
    ),
    canvasColor: AppColors.darkCanvas,
    iconTheme: IconThemeData(color: AppColors.white),
  );
}
