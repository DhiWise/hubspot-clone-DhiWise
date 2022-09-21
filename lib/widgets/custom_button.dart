import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.onTap,
      this.width,
      this.margin,
      this.text});

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  VoidCallback? onTap;

  double? width;

  EdgeInsetsGeometry? margin;

  String? text;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: getHorizontalSize(width ?? 0),
        margin: margin,
        padding: _setPadding(),
        decoration: _buildDecoration(),
        child: Text(
          text ?? "",
          textAlign: TextAlign.center,
          style: _setFontStyle(),
        ),
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      border: _setBorder(),
    );
  }

  _setPadding() {
    switch (padding) {
      default:
        return getPadding(
          all: 21,
        );
    }
  }

  _setColor() {
    switch (variant) {
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setBorder() {
    switch (variant) {
      default:
        return Border.all(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      default:
        return TextStyle(
          color: ColorConstant.cyan801,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Avenir Next LT Pro',
          fontWeight: FontWeight.w400,
        );
    }
  }
}

enum ButtonPadding {
  PaddingAll21,
}

enum ButtonVariant {
  OutlineGray300,
}

enum ButtonFontStyle {
  AvenirNextLTProRegular16,
}
