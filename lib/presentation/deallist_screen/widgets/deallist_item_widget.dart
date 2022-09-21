import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';

import '../controller/deallist_controller.dart';
import '../models/deallist_item_model.dart';

// ignore: must_be_immutable
class DeallistItemWidget extends StatelessWidget {
  DeallistItemWidget(this.deallistItemModelObj);

  DeallistItemModel deallistItemModelObj;

  var controller = Get.find<DeallistController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        top: 0.61000445,
        bottom: 0.61000445,
      ),
      decoration: AppDecoration.fillWhiteA700,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Padding(
            padding: getPadding(
              left: 16,
              top: 18,
              right: 16,
              bottom: 19,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: getMargin(
                          right: 10,
                        ),
                        child: Obx(
                          () => RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: deallistItemModelObj.dealName.value,
                                  style: TextStyle(
                                    color: ColorConstant.bluegray800,
                                    fontSize: getFontSize(
                                      18,
                                    ),
                                    fontFamily: 'Avenir Next LT Pro',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 4,
                        ),
                        child: Obx(
                          () => Text(
                            deallistItemModelObj.stage.value,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle
                                .txtAvenirNextLTProRegular14Bluegray800
                                .copyWith(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
              height: getVerticalSize(1.00),
              width: size.width,
              decoration: BoxDecoration(
                  color: ColorConstant.gray300)),
        ],
      ),
    );
  }
}
