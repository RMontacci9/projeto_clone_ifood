import 'package:flutter/material.dart';
import 'package:ifood_flutter/core/theme/app_colors.dart';

class AppTheme {
  static ThemeData get theme => ThemeData(
      fontFamily: 'Nunito-Sans',
    colorScheme:  ColorScheme.fromSwatch().copyWith(
        primary:  AppColors.primaryColor
    ),
    primaryColor:  AppColors.primaryColor,
    textTheme: TextTheme(

    )
  );
}