import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';

class AppDecoration {
  static BoxDecoration get fillGray50 => BoxDecoration(
        color: ColorConstant.gray50,
      );
  static BoxDecoration get txtOutlineTealA700 => BoxDecoration(
        color: ColorConstant.cyan51,
        border: Border.all(
          color: ColorConstant.tealA700,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineGray30012 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: ColorConstant.whiteA700,
      );
  static BoxDecoration get fillDeeporange300 => BoxDecoration(
        color: ColorConstant.deepOrange300,
      );
  static BoxDecoration get txtOutlineBluegray100 => BoxDecoration(
        color: ColorConstant.bluegray50,
        border: Border.all(
          color: ColorConstant.bluegray100,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get txtOutlineRed200 => BoxDecoration(
        color: ColorConstant.red50,
        border: Border.all(
          color: ColorConstant.red200,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineGray300 => BoxDecoration(
        border: Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get outlineGray70011 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray70011,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              7,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGray7001112 => BoxDecoration(
        color: ColorConstant.whiteA700,
        boxShadow: [
          BoxShadow(
            color: ColorConstant.gray70011,
            spreadRadius: getHorizontalSize(
              2.00,
            ),
            blurRadius: getHorizontalSize(
              2.00,
            ),
            offset: Offset(
              0,
              0,
            ),
          ),
        ],
      );
  static BoxDecoration get txtOutlineIndigo300 => BoxDecoration(
        color: ColorConstant.gray100,
        border: Border.all(
          color: ColorConstant.indigo300,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get txtOutlineTeal200 => BoxDecoration(
        color: ColorConstant.blue50,
        border: Border.all(
          color: ColorConstant.teal200,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
  static BoxDecoration get txtOutlineGray300 => BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        ),
      );
}

class BorderRadiusStyle {
  static BorderRadius roundedBorder8 = BorderRadius.circular(
    getHorizontalSize(
      8.00,
    ),
  );

  static BorderRadius roundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4.00,
    ),
  );

  static BorderRadius circleBorder20 = BorderRadius.circular(
    getHorizontalSize(
      20.00,
    ),
  );

  static BorderRadius txtRoundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4.00,
    ),
  );
}
