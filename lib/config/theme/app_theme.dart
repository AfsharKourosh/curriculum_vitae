import 'package:curriculum_vitae/core/utils/constants.dart';
import 'package:flutter/material.dart';

class AppTheme {
  //   MyTheme.dark():
  //   MyTheme.light():

  ThemeData getTheme(String languageCode) {
    return ThemeData(
      useMaterial3: false,
      dividerTheme: DividerThemeData(color: AppColors.textTheme),
      iconTheme: IconThemeData(),
      textTheme: TextTheme(bodySmall: TextStyle(color: AppColors.textTheme)),
      primaryTextTheme: TextTheme(
        bodySmall: TextStyle(color: AppColors.darkBlack),
      ),
    );
  }

  //   TextTheme get enPrimaryTextTheme => ;
  //   TextTheme get faPrimaryTextTheme =>;
}
