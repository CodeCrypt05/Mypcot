import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mypcot_app/utils/colors.dart';

class TextStyles {
  static TextStyle roboto(String color) {
    return GoogleFonts.roboto(
      textStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: color == 'deepBlue' ? AppColors.blueDeep : AppColors.blueLight,
      ),
    );
  }
}
