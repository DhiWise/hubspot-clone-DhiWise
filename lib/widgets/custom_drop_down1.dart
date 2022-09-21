import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';

class CustomDropDown1 extends StatelessWidget {
  CustomDropDown1(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.width,
      this.margin,
      this.focusNode,
      this.icon,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.items,
      this.onChanged,
      this.validator});

  DropDownShape? shape;

  DropDownPadding? padding;

  DropDownVariant? variant;

  DropDownFontStyle? fontStyle;

  Alignment? alignment;

  double? width;

  EdgeInsetsGeometry? margin;

  FocusNode? focusNode;

  Widget? icon;

  String? hintText;

  Widget? prefix;

  BoxConstraints? prefixConstraints;

  List<SelectionPopupModel>? items;

  Function(SelectionPopupModel)? onChanged;

  FormFieldValidator<SelectionPopupModel>? validator;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildDropDownWidget(),
          )
        : _buildDropDownWidget();
  }

  _buildDropDownWidget() {
    return Container(
      width: getHorizontalSize(width ?? 0),
      margin: margin,
      child: DropdownButtonFormField<SelectionPopupModel>(
        focusNode: focusNode,
        icon: icon,
        style: _setFontStyle(),
        decoration: _buildDecoration(),
        items: items?.map((SelectionPopupModel item) {
          return DropdownMenuItem<SelectionPopupModel>(
            value: item,
            child: Text(
              item.title,
              overflow: TextOverflow.ellipsis,
            ),
          );
        }).toList(),
        onChanged: (value) {
          onChanged!(value!);
        },
        validator: validator,
      ),
    );
  }

  _buildDecoration() {
    return InputDecoration(
      hintText: hintText ?? "",
      hintStyle: _setFontStyle(),
     // border: _setBorderStyle(),
      //focusedBorder: _setBorderStyle(),
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      //fillColor: _setFillColor(),
      //filled: _setFilled(),
      //isDense: true,
      contentPadding: _setPadding(),
      border: InputBorder.none
    );
  }

  _setFontStyle() {
    switch (fontStyle) {
      case DropDownFontStyle.AvenirNextLTProRegular14:
        return TextStyle(
          color: ColorConstant.bluegray800,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Avenir Next LT Pro',
          fontWeight: FontWeight.w400,
        );
      case DropDownFontStyle.AvenirNextLTProRegular14Cyan801:
        return TextStyle(
          color: ColorConstant.cyan801,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Avenir Next LT Pro',
          fontWeight: FontWeight.w400,
        );
      case DropDownFontStyle.AvenirNextLTProRegular18:
        return TextStyle(
          color: ColorConstant.bluegray800,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Avenir Next LT Pro',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.bluegray800,
          fontSize: getFontSize(
            18,
          ),
          fontFamily: 'Avenir Next LT Pro',
          fontWeight: FontWeight.w400,
        );
    }
  }

  _setOutlineBorderRadius() {
    switch (shape) {
      case DropDownShape.RoundedBorder4:
        return BorderRadius.circular(
          getHorizontalSize(
            4.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            16.50,
          ),
        );
    }
  }

  _setBorderStyle() {
    switch (variant) {
      case DropDownVariant.OutlineCyan800:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.cyan800,
            width: 1,
          ),
        );
      case DropDownVariant.OutlineGray300:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.gray300,
            width: 1,
          ),
        );
      default:
        return OutlineInputBorder(
          borderRadius: _setOutlineBorderRadius(),
          borderSide: BorderSide(
            color: ColorConstant.cyan800,
            width: 1,
          ),
        );
    }
  }

  _setFillColor() {
    switch (variant) {
      default:
        return ColorConstant.blue50;
    }
  }

  _setFilled() {
    switch (variant) {
      case DropDownVariant.OutlineGray300:
        return false;
      default:
        return true;
    }
  }

  _setPadding() {
    switch (padding) {
      case DropDownPadding.PaddingTB11:
        return getPadding(
         left: 7,
         top: 7,
         right: 7,
         bottom: 11,
        );
      case DropDownPadding.PaddingTB15:
        return getPadding(
          left: 10,
          top: 10,
          right: 10,
          bottom: 15,
        );
      default:
        return getPadding(
          //all: 8,
        );
    }
  }
}

enum DropDownShape {
  RoundedBorder16,
  RoundedBorder4,
}

enum DropDownPadding {
  PaddingTB11,
  PaddingAll8,
  PaddingTB15,
}

enum DropDownVariant {
  OutlineCyan800,
  OutlineGray300,
}

enum DropDownFontStyle {
  AvenirNextLTProDemi14,
  AvenirNextLTProRegular14,
  AvenirNextLTProRegular14Cyan801,
  AvenirNextLTProRegular18,
}
