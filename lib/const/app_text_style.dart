import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:test_svyaz/const/app_color.dart';

class AppTextStyle {
  TextStyle mainHeader = GoogleFonts.mulish(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      fontSize: 20,
      decoration: TextDecoration.none,
      color: AppColor().black
  );

  TextStyle headerAllBooks = GoogleFonts.mulish(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
      fontSize: 12,
      decoration: TextDecoration.none,
      color: AppColor().lightGrey
  );

  TextStyle bookTitle = GoogleFonts.montserrat(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
      fontSize: 14,
      decoration: TextDecoration.none,
      color: AppColor().black
  );

  TextStyle bookYear = GoogleFonts.montserrat(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      decoration: TextDecoration.none,
      color: AppColor().lightGrey
  );

  TextStyle bookAuthor = GoogleFonts.montserrat(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      fontSize: 12,
      decoration: TextDecoration.none,
      color: AppColor().grey
  );

  TextStyle bookDescription = GoogleFonts.montserrat(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      fontSize: 12,
      decoration: TextDecoration.none,
      color: AppColor().black
  );

  TextStyle favoriteButton = GoogleFonts.montserrat(
      fontWeight: FontWeight.w600,
      fontStyle: FontStyle.normal,
      fontSize: 14,
      decoration: TextDecoration.none,
      color: AppColor().white
  );

  TextStyle bottomLabel = GoogleFonts.montserrat(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      fontSize: 10
  );

  TextStyle profileLabel = GoogleFonts.montserrat(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: AppColor().lightGrey
  );

  TextStyle profileFloatingLabel = GoogleFonts.montserrat(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      color: AppColor().lightGrey
  );

  TextStyle profileEntered = GoogleFonts.montserrat(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      color: AppColor().black
  );
}