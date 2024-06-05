import 'package:articles/core/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/cupertino.dart';

TextStyle get styleBold24 {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: Color(0xff282828),
    fontSize: 24,
    fontWeight: FontWeight.w700,
  ));
}

TextStyle get styleBold18 {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: Color(0xff282828),
    fontSize: 18,
    fontWeight: FontWeight.w700,
  ));
}

TextStyle get styleBold16 {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: Color(0xff282828),
    fontSize: 16,
    fontWeight: FontWeight.w700,
  ));
}

TextStyle get styleBold12 {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: Color(0xff282828),
    fontSize: 12,
    fontWeight: FontWeight.w700,
  ));
}

TextStyle get titleLarge32 {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: Color(0xff282828),
    fontSize: 12,
    fontWeight: FontWeight.w700,
  ));
}

TextStyle get displayMedium18 {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: Color(0xff282828),
    fontSize: 18,
  ));
}

TextStyle get styleMeduim16 {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: Color(0xFF424242),
    fontSize: 16,
    fontWeight: FontWeight.w500,
  ));
}

TextStyle get paragraphStyle {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: Color(0xFF424242),
    fontSize: 15,
    fontWeight: FontWeight.w500,
    textBaseline: TextBaseline.alphabetic,
  ));
}

TextStyle get styleRegular16 {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: Color(0xffA8A8A8),
    fontSize: 16,
    fontWeight: FontWeight.w400,
  ));
}

TextStyle get bodyLarge24 {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: AppColors.colorTex1,
    fontSize: 24,
    fontWeight: FontWeight.w300,
  ));
}

TextStyle get bodyMedium16 {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: AppColors.colorTex1,
    fontSize: 16,
    fontWeight: FontWeight.w300,
  ));
}

TextStyle get styleRegular24 {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: Color(0xff282828),
    fontSize: 24,
    fontWeight: FontWeight.w400,
  ));
}

TextStyle get styleRegular12 {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: Color(0xff282828),
    fontSize: 12,
    fontWeight: FontWeight.w400,
  ));
}

TextStyle get titleLarge64 {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: Color(0xff282828),
    fontSize: 32,
    fontWeight: FontWeight.w400,
  ));
}

TextStyle get titleMedium32 {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: Color(0xff282828),
    fontSize: 24,
    fontWeight: FontWeight.bold,
  ));
}

TextStyle get titleSmall16 {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: Color(0xff282828),
    fontSize: 16,
    fontWeight: FontWeight.bold,
  ));
}

TextStyle get displayLarge64 {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: Color(0xff282828),
    fontSize: 24,
  ));
}

TextStyle get displayMedium32 {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: Color(0xff282828),
    fontSize: 18,
  ));
}

TextStyle get lightDisplayMedium32 {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: AppColors.textGreyColor,
    fontSize: 18,
  ));
}

TextStyle get whiteDisplayMedium32 {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: AppColors.primaryBackGroundColor,
    fontSize: 18,
  ));
}

TextStyle get displaySmall16 {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: Color(0xff282828),
    fontSize: 14,
    fontWeight: FontWeight.w300,
  ));
}

TextStyle get bodyLarge64 {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: Color(0xff282828),
    fontSize: 24,
    fontWeight: FontWeight.w300,
  ));
}

TextStyle get bodyMedium32 {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: Color(0xff282828),
    fontSize: 16,
    fontWeight: FontWeight.w300,
  ));
}

TextStyle get whitebodyMedium32 {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: AppColors.primaryBackGroundColor,
    fontSize: 16,
    fontWeight: FontWeight.w300,
  ));
}

TextStyle get bodySmall16 {
  return GoogleFonts.tajawal(
      textStyle: const TextStyle(
    color: Color(0xff282828),
    fontSize: 14,
    fontWeight: FontWeight.w300,
  ));
}

Text buildparagraph({required final text}) => Text(
      text,
      style: paragraphStyle,
    );
