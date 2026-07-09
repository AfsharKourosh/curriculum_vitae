import 'package:curriculum_vitae/core/utils/constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  final Color scaffoldBackground;
  final Color textThemeApp;
  final Brightness brightness;

  AppTheme.dark()
    : scaffoldBackground = AppColors.darkBackground,
      textThemeApp = AppColors.textTheme,
      brightness = Brightness.dark;
  AppTheme.light()
    : scaffoldBackground = AppColors.textTheme,
      textThemeApp = AppColors.darkBlack,
      brightness = Brightness.light;

  ThemeData getTheme() {
    return ThemeData(
      useMaterial3: false,
      brightness: brightness,
      dividerTheme: DividerThemeData(color: textThemeApp),
      iconTheme: IconThemeData(color: Colors.white, size: 18),
      textTheme: TextTheme(
        bodySmall: TextStyle(color: textThemeApp, fontSize: 14, height: 1.5),
      ),
      primaryTextTheme: TextTheme(bodySmall: TextStyle()),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(double.infinity, 50),
          backgroundColor: AppColors.pinkShadow,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: AppSizes.circle10,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(),
      scaffoldBackgroundColor: scaffoldBackground,
    );
  }

  //   TextTheme get enPrimaryTextTheme => ;
  //   TextTheme get faPrimaryTextTheme =>;
}
