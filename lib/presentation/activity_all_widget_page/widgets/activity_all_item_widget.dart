import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';

import '../controller/activity_all_widget_controller.dart';
import '../models/activity_all_item_model.dart';

// ignore: must_be_immutable
class ActivityAllItemWidget extends StatelessWidget {
  ActivityAllItemWidget(this.activityAllItemModelObj);

  ActivityAllItemModel activityAllItemModelObj;

  var controller = Get.find<ActivityAllWidgetController>();

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
                "${activityAllItemModelObj.typeTxt.value} email: ${activityAllItemModelObj.wassentemailTxt.value}",
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
                      activityAllItemModelObj.timeTxt.value,
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
          Padding(
            padding: EdgeInsets.only(
              left: getHorizontalSize(
                10.00,
              ),
              top: getVerticalSize(
                12.00,
              ),
              right: getHorizontalSize(
                10.00,
              ),
              bottom: getVerticalSize(
                12.00,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: getHorizontalSize(
                      4.00,
                    ),
                    top: getVerticalSize(
                      4.00,
                    ),
                    right: getHorizontalSize(
                      4.00,
                    ),
                    bottom: getVerticalSize(
                      4.00,
                    ),
                  ),
                  decoration: AppDecoration.txtOutlineBluegray100.copyWith(
                    borderRadius: BorderRadiusStyle.txtRoundedBorder4,
                  ),
                  child: Obx(
                    () => Text(
                      activityAllItemModelObj.typeTxt.value,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtAvenirNextLTProDemi14.copyWith(),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
