

import 'package:flutter/material.dart';

class Constant{
  static const String baseUrl="https://rmstore-backend.vercel.app/v1/";

  static const kPrimaryColor = Color(0xFF4DB6AC);
  static const kPrimaryLightColor = Colors.teal;
  static const kPrimaryGradientColor = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
  );
  static const kSecondaryColor = Colors.white;
  static const kTextColor = Color(0xFF757575);
  static const kAnimationDuration = Duration(milliseconds: 200);

  static const headingStyle = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.bold,
    color: Colors.black,
    height: 1.5,
  );



  OutlineInputBorder outlineInputBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(15),
      borderSide: const BorderSide(color: kTextColor),
    );
  }

  static const String isUserSignIn = "isUserSignIn";


  List<Locale> locales = [
    Locale('en', ''),
    Locale('de', ''),
    Locale('fa', ''),
    Locale('zh', ''),
    Locale('es', ''),
    Locale('ar', ''),
  ];



}