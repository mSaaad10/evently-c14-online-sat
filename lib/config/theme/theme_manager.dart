import 'package:evently_c14_online_sat/core/resources/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeManager {
  static final ThemeData light = ThemeData(
      useMaterial3: false,
      appBarTheme: AppBarTheme(
          iconTheme: const IconThemeData(color: ColorsManager.blue),
          centerTitle: true,
          color: ColorsManager.light,
          foregroundColor: ColorsManager.black10,
          titleTextStyle: GoogleFonts.roboto(
              fontSize: 18.sp,
              color: ColorsManager.blue,
              fontWeight: FontWeight.normal,
              fontStyle: FontStyle.normal)),
      primaryColor: ColorsManager.blue,
      scaffoldBackgroundColor: ColorsManager.light,
      iconTheme: const IconThemeData(
        color: ColorsManager.black1C,
      ),
      cardColor: ColorsManager.light,
      cardTheme: CardTheme(
        color: ColorsManager.light,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.r)),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: ColorsManager.blue,
        foregroundColor: ColorsManager.white,
        shape: StadiumBorder(
            side: BorderSide(
          width: 4.w,
          color: ColorsManager.white,
        )),
      ),
      bottomAppBarTheme: const BottomAppBarTheme(
        color: ColorsManager.blue,
        shape: CircularNotchedRectangle(),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.transparent,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: ColorsManager.white,
          unselectedItemColor: ColorsManager.white),
      inputDecorationTheme: InputDecorationTheme(
        prefixIconColor: ColorsManager.grey,
        labelStyle: GoogleFonts.inter(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: ColorsManager.grey,
        ),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(width: 1.w, color: ColorsManager.grey)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(width: 1.w, color: ColorsManager.grey)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(width: 1.w, color: ColorsManager.grey)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(width: 1.w, color: ColorsManager.red)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.r),
            borderSide: BorderSide(width: 1.w, color: ColorsManager.red)),
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              padding: EdgeInsets.zero,
              elevation: 0,
              foregroundColor: ColorsManager.blue,
              textStyle: GoogleFonts.inter(
                  fontSize: 16.sp,
                  color: ColorsManager.blue,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  decoration: TextDecoration.underline))),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(14.r),
              ),
              padding: REdgeInsets.symmetric(vertical: 12),
              backgroundColor: ColorsManager.blue,
              foregroundColor: ColorsManager.white,
              textStyle: GoogleFonts.inter(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w500,
                  color: ColorsManager.white))),
      textTheme: TextTheme(
        bodySmall: GoogleFonts.inter(
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
            color: ColorsManager.black1C),
        titleMedium: GoogleFonts.inter(
            fontSize: 18.sp,
            fontWeight: FontWeight.w500,
            color: ColorsManager.blue),
        titleSmall: GoogleFonts.inter(
            fontSize: 14.sp,
            color: ColorsManager.white,
            fontWeight: FontWeight.normal),
        titleLarge: GoogleFonts.inter(
            fontSize: 24.sp,
            color: ColorsManager.white,
            fontWeight: FontWeight.bold),
        labelMedium: GoogleFonts.inter(
            fontSize: 20.sp,
            color: ColorsManager.blue,
            fontWeight: FontWeight.bold),
        labelSmall: GoogleFonts.inter(
            fontSize: 14.sp,
            color: ColorsManager.black1C,
            fontWeight: FontWeight.bold),
      ));
  static final ThemeData dark =
      ThemeData(scaffoldBackgroundColor: ColorsManager.dark);
}
