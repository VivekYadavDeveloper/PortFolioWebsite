import 'package:flutter/material.dart';
import 'package:portfolio/Constant/constant.dart';

final darkTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: AppColors.purpelColor,
    brightness: Brightness.dark,
    background: AppColors.mirage,
  ),
  indicatorColor: AppColors.shadePurple,
  dividerColor: Colors.white54,
);
final lightTheme = ThemeData(
  colorScheme: ColorScheme.fromSwatch().copyWith(
    secondary: AppColors.mirage,
    brightness: Brightness.light,
    background: AppColors.white,
  ),
  indicatorColor: AppColors.shadePurple,
  dividerColor: Colors.black,
);
