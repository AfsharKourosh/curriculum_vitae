import 'package:curriculum_vitae/core/utils/constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  //   MyTheme.dark():
  //   MyTheme.light():

  ThemeData getTheme(String languageCode) {
    return ThemeData(
      useMaterial3: false,
      dividerTheme: DividerThemeData(color: AppColors.textTheme),
      iconTheme: IconThemeData(color: Colors.white, size: 18),
      textTheme: TextTheme(
        bodySmall: TextStyle(
          color: AppColors.textTheme,
          fontSize: 14,
          height: 1.5,
        ),
      ),
      primaryTextTheme: TextTheme(
        bodySmall: TextStyle(color: AppColors.darkBlack),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(minimumSize: Size(double.infinity, 50)),
      ),
    );
  }

  //   TextTheme get enPrimaryTextTheme => ;
  //   TextTheme get faPrimaryTextTheme =>;
}
