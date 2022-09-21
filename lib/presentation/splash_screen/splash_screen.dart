import 'controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';

class SplashScreen extends GetWidget<SplashController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.deepOrange300,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Container(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                              width: size.width,
                              margin: getMargin(left: 16, top: 15, right: 16),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text("lbl_9_41".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtSFProTextSemibold15
                                            .copyWith()),
                                    Padding(
                                        padding: getPadding(top: 2, bottom: 1),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 1, bottom: 1),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgSignal,
                                                      height: getVerticalSize(
                                                          10.00),
                                                      width: getHorizontalSize(
                                                          19.00))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 5, bottom: 1),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgSignal11X17,
                                                      height: getVerticalSize(
                                                          11.00),
                                                      width: getHorizontalSize(
                                                          17.00))),
                                              Padding(
                                                  padding: getPadding(left: 5),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgComputer,
                                                      height: getVerticalSize(
                                                          11.00),
                                                      width: getHorizontalSize(
                                                          27.00)))
                                            ]))
                                  ]))),
                      Padding(
                          padding: getPadding(
                              left: 36, top: 321, right: 36, bottom: 20),
                          child: CommonImageView(
                              svgPath: ImageConstant.imgShare,
                              height: getVerticalSize(82.00),
                              width: getHorizontalSize(78.00)))
                    ]))))));
  }
}
