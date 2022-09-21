import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color bluegray50 = fromHex('#eaf0f6');

  static Color red700 = fromHex('#d03329');

  static Color red200 = fromHex('#f89ca1');

  static Color gray50 = fromHex('#f4f8fb');

  static Color teal200 = fromHex('#86ceda');

  static Color red50 = fromHex('#fdedee');

  static Color black900 = fromHex('#000000');

  static Color deepOrange300 = fromHex('#ff7a59');

  static Color gray70011 = fromHex('#11555555');

  static Color tealA700 = fromHex('#0eb7a2');

  static Color gray500 = fromHex('#a2a2a2');

  static Color bluegray100 = fromHex('#ccd7e3');

  static Color gray300 = fromHex('#dfe3ec');

  static Color blue50 = fromHex('#e6f5f8');

  static Color gray100 = fromHex('#f1f1fb');

  static Color bluegray702 = fromHex('#3b5169');

  static Color indigo300 = fromHex('#6d78c8');

  static Color bluegray800 = fromHex('#2d3e50');

  static Color bluegray701 = fromHex('#455b73');

  static Color bluegray700 = fromHex('#425c77');

  static Color cyan51 = fromHex('#e5f7f7');

  static Color bluegray400 = fromHex('#888888');

  static Color bluegray300 = fromHex('#7d98b6');

  static Color cyan800 = fromHex('#007c8e');

  static Color cyan50 = fromHex('#e5f5f8');

  static Color cyan801 = fromHex('#007c8f');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
