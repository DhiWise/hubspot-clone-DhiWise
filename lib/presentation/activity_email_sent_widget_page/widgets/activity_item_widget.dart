import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';

import '../controller/activity_email_sent_widget_controller.dart';
import '../models/activity_item_model.dart';

// ignore: must_be_immutable
class ActivityItemWidget extends StatelessWidget {
  ActivityItemWidget(this.activityItemModelObj);

  ActivityItemModel activityItemModelObj;

  var controller = Get.find<ActivityEmailSentWidgetController>();

  SelectionPopupModel? selectedDropDownValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 8.0,
        bottom: 8.0,
      ),
      decoration: AppDecoration.outlineGray70011.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: getPadding(
              left: 16,
              top: 12,
              right: 16,
            ),
            child: Obx(
              () => Text(
                "${activityItemModelObj.typeTxt.value} email: ${activityItemModelObj.wassentemailTxt.value}",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtAvenirNextLTProRegular16.copyWith(),
              ),
            ),
          ),
          Padding(
            padding: getPadding(
              left: 14,
              top: 9,
              right: 14,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: getPadding(
                    bottom: 1,
                  ),
                  child: Obx(
                    () => Text(
                      activityItemModelObj.timeTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtAvenirNextLTProRegular12.copyWith(),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 9,
                    top: 1,
                  ),
                  child: CommonImageView(
                    svgPath: ImageConstant.imgComputer11X12,
                    height: getVerticalSize(
                      11.00,
                    ),
                    width: getHorizontalSize(
                      12.00,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 14,
                top: 14,
                right: 14,
                bottom: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  /*CustomDropDown(
                    width: 60,
                    focusNode: FocusNode(),
                    icon: Container(
                      margin: getMargin(
                        left: 8,
                      ),
                      child: CommonImageView(
                        svgPath: ImageConstant.imgArrowdown,
                      ),
                    ),
                    hintText: "lbl_1_sent".tr,
                    margin: getMargin(
                      top: 3,
                      bottom: 7,
                    ),
                    fontStyle:
                        DropDownFontStyle.AvenirNextLTProRegular14Cyan801,
                    items: activityItemModelObj.dropdownItemList,
                    onChanged: (value) {
                      selectedDropDownValue = value;
                    },
                  ),*/
                  Container(
                    padding: getPadding(
                      left: 4,
                      top: 3,
                      right: 4,
                      bottom: 7,
                    ),
                    decoration: AppDecoration.txtOutlineBluegray100.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder4,
                    ),
                    child: Obx(
                      () => Text(
                        activityItemModelObj.typeTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtAvenirNextLTProDemi14.copyWith(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
