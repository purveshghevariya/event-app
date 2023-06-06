import 'package:event/config/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextStyle {
  static TextStyle mediumTextStyle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.bold,
    color: AppColors.blackTextColor,
    letterSpacing: 0,
  );

  static TextStyle regularTextStyle = const TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: AppColors.blackTextColor,
    letterSpacing: 0,
  );

  static TextStyle smallTextStyle = const TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.normal,
    color: AppColors.blackTextColor,
    letterSpacing: 0,
  );
}
