import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle fahadstyle(
    {double? letterSpacing,
    double? fontSize,
    FontWeight? fontWeight,
    Color? color,
    bool? isUnderline,
    List<Shadow>? shadows,
    bool? isLineThrough}) {
  return GoogleFonts.poppins(
    height: 1.7,
      letterSpacing: letterSpacing,
      shadows: shadows,
      fontSize: (Get.width + Get.height) * (((fontSize ?? 1.0)) / 100),
      fontWeight: fontWeight,
      color: color,
      decoration: (isUnderline ?? false)
          ? TextDecoration.underline
          : ((isLineThrough ?? false) ? TextDecoration.lineThrough : null));
}
