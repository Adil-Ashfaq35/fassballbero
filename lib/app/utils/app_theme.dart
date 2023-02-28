import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static const Color primaryColor = Color(0xFFA62116);
  static const Color darkPrimaryColor = Color(0xFF00796B);
  static const Color lightPrimaryColor = Color(0xFFB2DFDB);
  static const Color blackColor = Color(0xFF181C1E);

  static const Color blackCardColor = Color(0xFF262F34);
  static const Color darkLightColor = Color(0xFF656D77);
  static const Color whiteBackgroundColor = Color(0xFFFFFFFF);
  static const Color BackgroundColor = Color(0xFF1E1E1E);
  static const Color lightComponentsColor = Color(0xFF40CAFF);
  static const Color lightCardColor = Color(0xFFF4F8FA);

  static const Color errorColor = Color(0xFFD73A49);
  static const Color borderColor =  Color(0xFFECEBEB);
  static const Color lightTextColor = Color(0xFFF4F8FA);
  static const Color lightBlackColor=Color(0x1F000000);
  static const Color lightGreyColor=Colors.black12;
  static const Color scaffoldBg = Color(0xFF0D0F14);
  static const Color searchBarFill = Color(0xFF141921);
  static const Color coffeeSelected = Color(0xFFD17741);
  static const Color coffeeUnselected = Color(0xFF525559);
  static const Color gradientTopLeft = Color(0xFF262B34);


  static LinearGradient rootLinearGradient = LinearGradient(
    colors: [
      const Color(0xFFCACFF9).withOpacity(0.5),
      const Color(0xFFF5CBD9).withOpacity(0.6),
      const Color(0xFFCED3FC).withOpacity(0.5),

    ],
    begin:Alignment.topRight,
    end: Alignment.bottomLeft,
    tileMode: TileMode.decal,
  );

  static ThemeData get lightTheme {
    return ThemeData(
      fontFamily: GoogleFonts.firaSans().fontFamily,
      primaryColor: whiteBackgroundColor,
      backgroundColor: whiteBackgroundColor,
      scaffoldBackgroundColor: whiteBackgroundColor,
      primaryColorLight: const Color(0xFFF1F1F1),
      splashColor: Colors.transparent,
      brightness: Brightness.light,
      errorColor: errorColor,
      accentColorBrightness: Brightness.light,
      highlightColor: Colors.transparent,
      focusColor: primaryColor,
      iconTheme: const IconThemeData(color: Colors.black),
      textTheme: TextTheme(
        headline1: TextStyle(
          letterSpacing: 1,
          fontSize: 32.sp,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        headline2: TextStyle(
          fontSize: 11.sp,
          color: Colors.black,
        ),
        headline3: TextStyle(
          fontSize: 18.sp,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        headline5: TextStyle(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: Colors.black,
        ),
        bodyText1: TextStyle(
          fontSize: 12.sp,
          color: Colors.black,
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
          color: Colors.black,
          fontSize: 14.sp,
        ),
      ),
      appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          onPrimary: Colors.white,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
          primary: borderColor,
          shape: RoundedRectangleBorder(
              //to set border radius to button
              borderRadius: BorderRadius.circular(28)),
        ),
      ),
      textSelectionTheme:
          const TextSelectionThemeData(cursorColor: primaryColor), colorScheme: ColorScheme.fromSwatch()
          .copyWith(
            secondary: const Color(0xFF79A6DC),
            brightness: Brightness.light,
          )
          .copyWith(secondary: primaryColor).copyWith(secondary: primaryColor),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      fontFamily: GoogleFonts.firaSans().fontFamily,
      canvasColor: blackColor,
      primaryColor: blackColor,
      backgroundColor: blackColor,
      unselectedWidgetColor: Colors.blueGrey.withOpacity(0.4),
      scaffoldBackgroundColor: blackColor,
      primaryColorLight: const Color(0xFF2D333A),
      focusColor: const Color(0xFF444C56),
      errorColor: errorColor,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      iconTheme: const IconThemeData(color: Colors.white),
      dividerColor: Colors.white,
      textTheme: const TextTheme(
        headline1: TextStyle(
          color: Color(0xffFAFAFA),
        ),
        headline2: TextStyle(
          color: Color(0xffFAFAFA),
        ),
        bodyText1: TextStyle(
          color: Color(0xffFAFAFA),
        ),
        bodyText2: TextStyle(
          color: Color(0xffFAFAFA),
        ),
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: const Color(0xFF6E7681),
        brightness: Brightness.dark,
      ),
    );
  }
}

extension MyThemeData on ThemeData {
  bool get isDarkTheme => brightness == Brightness.dark;

  bool get isLightTheme => brightness == Brightness.light;
}
