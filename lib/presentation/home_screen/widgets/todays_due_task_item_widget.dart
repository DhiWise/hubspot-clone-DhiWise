import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';
import 'package:hbs/widgets/custom_icon_button.dart';
import '../controller/home_controller.dart';
import '../models/todays_due_task_item_model.dart';

// ignore: must_be_immutable
class TodaysDueTaskItemWidget extends StatelessWidget {
  TodaysDueTaskItemWidget(this.todaysDueTaskItemModelObj);

  TodaysDueTaskItemModel todaysDueTaskItemModelObj;

  var controller = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray30012,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: getPadding(
              left: 16,
              top: 12,
              bottom: 12,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: getPadding(
                    top: 23,
                    bottom: 23,
                  ),
                  child: Obx(
                    () => CommonImageView(
                      svgPath: todaysDueTaskItemModelObj.taskStatusImg.value,
                      height: getSize(
                        30.00,
                      ),
                      width: getSize(
                        30.00,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 251,
                  margin: getMargin(
                    left: 24,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          todaysDueTaskItemModelObj.callwithDavidTxt.value,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtAvenirNextLTProDemi18.copyWith(),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 9,
                          right: 10,
                        ),
                        child: Obx(
                          () => Text(
                            todaysDueTaskItemModelObj.taskContact.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle
                                .txtAvenirNextLTProRegular14Bluegray702
                                .copyWith(),
                          ),
                        ),
                      ),
                      Container(
                        margin: getMargin(
                          top: 9,
                          right: 10,
                        ),
                        padding: getPadding(
                          all: 4,
                        ),
                        decoration:
                            AppDecoration.txtOutlineBluegray100.copyWith(
                          borderRadius: BorderRadiusStyle.txtRoundedBorder4,
                        ),
                        child: Obx(
                          () => Text(
                            todaysDueTaskItemModelObj.timeOneTxt.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtAvenirNextLTProDemi14.copyWith(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomIconButton(
            height: 40,
            width: 40,
            margin: getMargin(
              top: 30,
              right: 16,
              bottom: 30,
            ),
            child: Obx(
              () => CommonImageView(
                svgPath: todaysDueTaskItemModelObj.taskTypeImg.value,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
