import 'package:banking_app/utilities/themeStyles.dart';
import 'package:flutter/material.dart';

class ThemeStyles {
  static TextStyle primaryTitle = TextStyle(
      fontSize: 20, fontWeight: FontWeight.w600, color: ThemeColors.black);

  static TextStyle seeAll = TextStyle(fontSize: 17, color: ThemeColors.black);

  static TextStyle cardDetails = const TextStyle(
      fontSize: 17, color: Color(0xff66646d), fontWeight: FontWeight.w600);

  static TextStyle cardMoney = const TextStyle(
      color: Colors.white, fontSize: 22, fontWeight: FontWeight.w700);

  static TextStyle tagText = TextStyle(
      fontStyle: FontStyle.italic,
      color: ThemeColors.black,
      fontWeight: FontWeight.w500);

  static TextStyle otherDetailsPrimary =
      TextStyle(fontSize: 16, color: ThemeColors.black);

  static TextStyle otherDetailsSecondary =
      const TextStyle(fontSize: 12, color: Colors.grey);
}
