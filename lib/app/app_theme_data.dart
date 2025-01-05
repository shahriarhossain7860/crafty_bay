import 'package:crafty_bay/app/app_colors.dart';
import 'package:flutter/material.dart';

class AppThemeData{
  static ThemeData get lightThemeData{
    return ThemeData(
      colorSchemeSeed: AppColors.themeColor,
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: AppColors.themeColor,
      ),
         scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 3
      ),
      textTheme: TextTheme(
        titleLarge: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w600
      ),
      ),
      inputDecorationTheme: InputDecorationTheme(
          fillColor: Colors.white,
          filled: true,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 10,
          ),
          hintStyle: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.w400
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.themeColor,width: 1)
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.themeColor,width: 1)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.themeColor,width: 1)
          )
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.themeColor,
            foregroundColor: Colors.white,
            fixedSize: Size.fromWidth(double.maxFinite),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8)
            ),
            textStyle: const TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 16
            ),
            padding: EdgeInsets.symmetric(vertical: 12)
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.themeColor
        )
      )
    );
  }
}