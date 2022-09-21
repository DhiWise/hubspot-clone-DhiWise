import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';

import 'controller/more_controller.dart';

class MoreScreen extends GetWidget<MoreController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Column(children: [
              Expanded(
                  child: Container(
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                    Container(
                        width: size.width,
                        decoration: BoxDecoration(
                            color: ColorConstant.whiteA700,
                            boxShadow: [
                              BoxShadow(
                                  color: ColorConstant.gray70011,
                                  spreadRadius: getHorizontalSize(2.00),
                                  blurRadius: getHorizontalSize(2.00),
                                  offset: Offset(0, 0))
                            ]),
                        child: Container(
                            margin: getMargin(
                                left: 26, top: 15, right: 16, bottom: 20),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Padding(
                                          padding:
                                              getPadding(top: 34, right: 10),
                                          child: Text("lbl_more".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtAvenirNextLTProDemi24
                                                  .copyWith())))
                                ]))),
                    Expanded(
                        child: SingleChildScrollView(
                            padding: getPadding(top: 32),
                            child: Container(
                                margin: getMargin(bottom: 20),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 14, right: 14),
                                              child: Text("lbl_account".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtAvenirNextLTProRegular14Bluegray800
                                                      .copyWith()))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              margin: getMargin(top: 11),
                                              decoration: AppDecoration
                                                  .outlineGray30012,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 16,
                                                            top: 16,
                                                            bottom: 14),
                                                        child: ClipRRect(
                                                            borderRadius:
                                                                BorderRadius.circular(
                                                                    getHorizontalSize(
                                                                        20.00)),
                                                            child: CommonImageView(
                                                                imagePath:
                                                                    ImageConstant
                                                                        .imgEllipse5,
                                                                height: getSize(
                                                                    40.00),
                                                                width: getSize(
                                                                    40.00)))),
                                                    Container(
                                                        margin: getMargin(
                                                            left: 16,
                                                            top: 16,
                                                            bottom: 18),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          right:
                                                                              7),
                                                                  child: Text(
                                                                      "lbl_david_smith"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtAvenirNextLTProDemi16Black900
                                                                          .copyWith())),
                                                              Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              6),
                                                                  child: Text(
                                                                      "lbl_hub_id_22150339"
                                                                          .tr,
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                      style: AppStyle
                                                                          .txtAvenirNextLTProRegular12
                                                                          .copyWith()))
                                                            ]))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                              padding: getPadding(
                                                  left: 14, top: 29, right: 14),
                                              child: Text("lbl_tools".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtAvenirNextLTProRegular14Bluegray800
                                                      .copyWith()))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              margin: getMargin(top: 11),
                                              decoration: AppDecoration
                                                  .outlineGray30012,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 23,
                                                            top: 23,
                                                            bottom: 23),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgFile22X22,
                                                            height:
                                                                getSize(22.00),
                                                            width: getSize(
                                                                22.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 19,
                                                            top: 23,
                                                            bottom: 28),
                                                        child: Text(
                                                            "lbl_tasks".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtAvenirNextLTProDemi18
                                                                .copyWith()))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              decoration: AppDecoration
                                                  .outlineGray30012,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 23,
                                                            top: 23,
                                                            bottom: 23),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgCall22X22,
                                                            height:
                                                                getSize(22.00),
                                                            width: getSize(
                                                                22.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 19,
                                                            top: 23,
                                                            bottom: 28),
                                                        child: Text(
                                                            "lbl_recorded_calls"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtAvenirNextLTProDemi18
                                                                .copyWith()))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              decoration: AppDecoration
                                                  .outlineGray30012,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 20,
                                                            top: 20,
                                                            bottom: 20),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgTicket,
                                                            height:
                                                                getSize(30.00),
                                                            width: getSize(
                                                                30.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 16,
                                                            top: 23,
                                                            bottom: 28),
                                                        child: Text(
                                                            "lbl_tickets".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtAvenirNextLTProDemi18
                                                                .copyWith()))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              decoration: AppDecoration
                                                  .outlineGray30012,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 20,
                                                            top: 22,
                                                            bottom: 22),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgTrash,
                                                            height:
                                                                getVerticalSize(
                                                                    25.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    30.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 16,
                                                            top: 23,
                                                            bottom: 28),
                                                        child: Text(
                                                            "msg_business_card_s"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtAvenirNextLTProDemi18
                                                                .copyWith())),
                                                    Container(
                                                        margin: getMargin(
                                                            left: 16,
                                                            top: 22,
                                                            bottom: 23),
                                                        padding: getPadding(
                                                            left: 4,
                                                            top: 3,
                                                            right: 4,
                                                            bottom: 7),
                                                        decoration: AppDecoration
                                                            .txtOutlineIndigo300
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .txtRoundedBorder4),
                                                        child: Text(
                                                            "lbl_beta".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtAvenirNextLTProDemi14
                                                                .copyWith()))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              decoration: AppDecoration
                                                  .outlineGray30012,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 20,
                                                            top: 20,
                                                            bottom: 20),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgQrcode,
                                                            height:
                                                                getSize(30.00),
                                                            width: getSize(
                                                                30.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 16,
                                                            top: 23,
                                                            bottom: 28),
                                                        child: Text(
                                                            "lbl_qr_card_scanner"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtAvenirNextLTProDemi18
                                                                .copyWith())),
                                                    Container(
                                                        margin: getMargin(
                                                            left: 16,
                                                            top: 22,
                                                            bottom: 23),
                                                        padding: getPadding(
                                                            left: 4,
                                                            top: 3,
                                                            right: 4,
                                                            bottom: 7),
                                                        decoration: AppDecoration
                                                            .txtOutlineTealA700
                                                            .copyWith(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .txtRoundedBorder4),
                                                        child: Text(
                                                            "lbl_new".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtAvenirNextLTProDemi14
                                                                .copyWith()))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              decoration: AppDecoration
                                                  .outlineGray30012,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 22,
                                                            top: 22,
                                                            bottom: 22),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgComputer25X25,
                                                            height:
                                                                getSize(25.00),
                                                            width: getSize(
                                                                25.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 18,
                                                            top: 23,
                                                            bottom: 28),
                                                        child: Text(
                                                            "lbl_conversations"
                                                                .tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtAvenirNextLTProDemi18
                                                                .copyWith()))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              decoration: AppDecoration
                                                  .outlineGray30012,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 23,
                                                            top: 21,
                                                            bottom: 21),
                                                        child: CommonImageView(
                                                            svgPath: ImageConstant
                                                                .imgSignal26X24,
                                                            height:
                                                                getVerticalSize(
                                                                    26.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    24.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 19,
                                                            top: 27,
                                                            bottom: 24),
                                                        child: Text(
                                                            "lbl_reports".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtAvenirNextLTProDemi18
                                                                .copyWith()))
                                                  ]))),
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Container(
                                              decoration: AppDecoration
                                                  .outlineGray30012,
                                              child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 22,
                                                            top: 24,
                                                            bottom: 24),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgSave,
                                                            height:
                                                                getVerticalSize(
                                                                    21.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    26.00))),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 17,
                                                            top: 24,
                                                            bottom: 24),
                                                        child: Text(
                                                            "lbl_acedemy".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtAvenirNextLTProDemi18
                                                                .copyWith()))
                                                  ]))),

                                    ]))))
                  ]))),
              Container(
                  child: Container(
                      decoration: AppDecoration.fillWhiteA700,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                                height: getVerticalSize(1.00),
                                width: size.width,
                                decoration: BoxDecoration(
                                    color: ColorConstant.gray300)),
                            Padding(
                                padding: getPadding(top: 11, bottom: 30),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      GestureDetector(
                                          onTap: () {
                                            onTapColumnhome();
                                          },
                                          child: Container(
                                              margin: getMargin(top: 4),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.end,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Align(
                                                        alignment:
                                                            Alignment.center,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 5,
                                                                right: 4),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgHome22X24,
                                                                height:
                                                                    getVerticalSize(
                                                                        22.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        24.00)))),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                top: 7),
                                                            child: Text(
                                                                "lbl_today".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtAvenirNextLTProDemi12Bluegray300
                                                                    .copyWith())))
                                                  ]))),
                                      GestureDetector(
                                        onTap: () {
                                          onTapColumncontacts();
                                        },
                                        child: Container(
                                            margin:
                                                getMargin(top: 3, bottom: 2),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 15, right: 14),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgUser,
                                                          height:
                                                              getVerticalSize(
                                                                  22.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  18.00))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 6),
                                                          child: Text(
                                                              "lbl_contacts".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtAvenirNextLTProDemi12Bluegray300
                                                                  .copyWith())))
                                                ])),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          onTapColumnvector7();
                                        },
                                        child: Container(
                                            margin:
                                                getMargin(top: 5, bottom: 2),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 1,
                                                              right: 1),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgVector,
                                                              height:
                                                                  getVerticalSize(
                                                                      17.00),
                                                              width:
                                                                  getHorizontalSize(
                                                                      30.00)))),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 9),
                                                      child: Text(
                                                          "lbl_deals".tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtAvenirNextLTProDemi12Bluegray300
                                                              .copyWith()))
                                                ])),
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          onTapColumnactivity();
                                        },
                                        child: Container(
                                            margin: getMargin(top: 4),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 10, right: 9),
                                                      child: CommonImageView(
                                                          svgPath: ImageConstant
                                                              .imgMail,
                                                          height:
                                                              getSize(22.00),
                                                          width:
                                                              getSize(22.00))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 7),
                                                          child: Text(
                                                              "lbl_activity".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtAvenirNextLTProDemi12Bluegray300
                                                                  .copyWith())))
                                                ])),
                                      ),
                                      Container(
                                          margin: getMargin(top: 9, bottom: 2),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        left: 7, right: 6),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgMenu12X16,
                                                        height: getVerticalSize(
                                                            12.00),
                                                        width:
                                                            getHorizontalSize(
                                                                16.00))),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            getPadding(top: 10),
                                                        child: Text(
                                                            "lbl_more".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtAvenirNextLTProDemi12
                                                                .copyWith())))
                                              ]))
                                    ]))
                          ])))
            ])));
  }

  onTapColumnhome() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapColumncontacts() {
    Get.toNamed(AppRoutes.contactsScreen);
  }

  onTapColumnvector7() {
    Get.toNamed(AppRoutes.deallistScreen);
  }

  onTapColumnactivity() {
    Get.toNamed(AppRoutes.activityScreen);
  }
}
