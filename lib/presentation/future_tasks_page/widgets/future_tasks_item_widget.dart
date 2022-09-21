import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';
import '../controller/future_tasks_controller.dart';
import '../models/future_tasks_item_model.dart';

// ignore: must_be_immutable
class FutureTasksItemWidget extends StatelessWidget {
  FutureTasksItemWidget(this.futureTasksItemModelObj);

  FutureTasksItemModel futureTasksItemModelObj;

  var controller = Get.find<FutureTasksController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray30012,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisSize: MainAxisSize.max,
        children: [
          Column(
            children: [
              Padding(
                padding: getPadding(
                  left: 17,
                  top: 36,
                  bottom: 36,
                ),
                child: Obx(
                      () => CommonImageView(
                    svgPath: futureTasksItemModelObj.taskStatusImg.value,
                    height: getSize(
                      28.00,
                    ),
                    width: getSize(
                      28.00,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: getPadding(right: 10, left: 10),
                    child: Obx(
                          () => Text(
                        futureTasksItemModelObj.callTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtAvenirNextLTProDemi18.copyWith(),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: getPadding(top: 10, left: 10),
                    child: Obx(
                          () =>  Text(
                        futureTasksItemModelObj.taskContact.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtAvenirNextLTProRegular14Bluegray702
                            .copyWith(),
                      ),),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: getMargin(
                      left: 10,
                      top: 10,
                      right: 5,
                      bottom: 10,
                    ),
                    padding: getPadding(
                      left: 5,
                      top: 5,
                      right: 5,
                      bottom: 5,
                    ),
                    decoration: AppDecoration.txtOutlineBluegray100.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder4,
                    ),
                    child: Obx(
                          () => Text(
                        futureTasksItemModelObj.timeTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtAvenirNextLTProDemi14.copyWith(),
                      ),
                    ),
                  ),
                  Container(
                    margin: getMargin(
                      left: 5,
                      top: 10,
                      right: 5,
                      bottom: 10,
                    ),
                    padding: getPadding(
                      left: 5,
                      top: 5,
                      right: 5,
                      bottom: 5,
                    ),
                    decoration: AppDecoration.txtOutlineTeal200.copyWith(
                      borderRadius: BorderRadiusStyle.txtRoundedBorder4,
                    ),
                    child: Obx(
                          () => Text(
                        futureTasksItemModelObj.textTxt.value,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtAvenirNextLTProDemi14.copyWith(),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
