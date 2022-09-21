import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';
import 'package:hbs/widgets/custom_button.dart';

import '../home_screen/widgets/todays_due_task_item_widget.dart';
import '../home_screen/widgets/todays_due_meet_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/todays_due_task_item_model.dart';
import 'models/todays_due_meet_item_model.dart';

class HomeScreen extends GetWidget<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Column(children: [
              Expanded(
                  child: Container(
                      width: size.width,
                      child: SingleChildScrollView(
                          child: Container(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                            Container(
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                  Container(
                                      width: size.width,
                                      decoration: BoxDecoration(
                                          color: ColorConstant.whiteA700,
                                          boxShadow: [
                                            BoxShadow(
                                                color: ColorConstant.gray70011,
                                                spreadRadius:
                                                    getHorizontalSize(2.00),
                                                blurRadius:
                                                    getHorizontalSize(2.00),
                                                offset: Offset(0, 0))
                                          ]),
                                      child: Container(
                                          margin: getMargin(
                                              left: 25,
                                              top: 15,
                                              right: 15,
                                              bottom: 15),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        top: 33),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .center,
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text("lbl_today".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtAvenirNextLTProDemi24
                                                                  .copyWith()),
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 4,
                                                                      bottom:
                                                                          4),
                                                              child: CommonImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgSearch,
                                                                  height:
                                                                      getSize(
                                                                          20.00),
                                                                  width: getSize(
                                                                      20.00)))
                                                        ]))
                                              ]))),
                                  Padding(
                                      padding: getPadding(
                                          left: 19, top: 26, right: 19),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    top: 4, bottom: 4),
                                                child: CommonImageView(
                                                    svgPath:
                                                        ImageConstant.imgFile,
                                                    height: getSize(18.00),
                                                    width: getSize(18.00))),
                                            Padding(
                                                padding: getPadding(left: 13),
                                                child: Text(
                                                    "lbl_upcoming_tasks".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtAvenirNextLTProDemi22
                                                        .copyWith()))
                                          ])),
                                  Padding(
                                      padding: getPadding(
                                          left: 16, top: 10, right: 16),
                                      child: Obx(() => Text(
                                          controller.homeModelObj.value
                                                  .durationTxt.value +
                                              " due today",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtAvenirNextLTProRegular14Bluegray701
                                              .copyWith()))),
                                  Padding(
                                      padding: getPadding(top: 16),
                                      child: Obx(() => ListView.builder(
                                          physics: BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: controller
                                              .homeModelObj
                                              .value
                                              .listcheckmarkItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            TodaysDueTaskItemModel model =
                                                controller.homeModelObj.value
                                                        .listcheckmarkItemList[
                                                    index];
                                            return TodaysDueTaskItemWidget(
                                                model);
                                          }))),
                                  CustomButton(
                                      width: 428,
                                      text: "lbl_go_to_tasks".tr,
                                      onTap: onTapBtnGototasks),
                                  Padding(
                                      padding: getPadding(
                                          left: 18, top: 34, right: 18),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                                padding: getPadding(bottom: 2),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgCalendar22X20,
                                                    height:
                                                        getVerticalSize(22.00),
                                                    width: getHorizontalSize(
                                                        20.00))),
                                            Padding(
                                                padding: getPadding(
                                                    left: 12, top: 1),
                                                child: Text(
                                                    "msg_upcoming_meetin".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtAvenirNextLTProDemi22
                                                        .copyWith()))
                                          ])),
                                  Padding(
                                      padding: getPadding(
                                          left: 16, top: 10, right: 16),
                                      child: Obx(() => Text(
                                          controller.homeModelObj.value
                                                  .k8MeetingsScheTxt.value +
                                              " meetings scheduled",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtAvenirNextLTProRegular14Bluegray701
                                              .copyWith()))),
                                  Padding(
                                      padding: getPadding(top: 16),
                                      child: Obx(() => ListView.builder(
                                          physics: BouncingScrollPhysics(),
                                          shrinkWrap: true,
                                          itemCount: controller
                                              .homeModelObj
                                              .value
                                              .listtimeFourItemList
                                              .length,
                                          itemBuilder: (context, index) {
                                            TodaysDueMeetItemModel model =
                                                controller.homeModelObj.value
                                                        .listtimeFourItemList[
                                                    index];
                                            return TodaysDueMeetItemWidget(
                                                model);
                                          })))
                                ]))
                          ]))))),
              Container(
                  decoration: BoxDecoration(color: ColorConstant.whiteA700),
                  child: Container(
                      margin: getMargin(bottom: 30),
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
                                padding: getPadding(top: 11),
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                          margin: getMargin(top: 4),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.end,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Padding(
                                                        padding: getPadding(
                                                            left: 5, right: 4),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgHome,
                                                            height:
                                                                getVerticalSize(
                                                                    22.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    24.00)))),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            getPadding(top: 7),
                                                        child: Text(
                                                            "lbl_today".tr,
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtAvenirNextLTProDemi12
                                                                .copyWith())))
                                              ])),
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
                                          onTapColumnvector5();
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
                                      GestureDetector(
                                          onTap: () {
                                            onTapColumnvector6();
                                          },
                                          child: Container(
                                              margin:
                                                  getMargin(top: 9, bottom: 2),
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 7, right: 6),
                                                        child: CommonImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgMenu,
                                                            height:
                                                                getVerticalSize(
                                                                    12.00),
                                                            width:
                                                                getHorizontalSize(
                                                                    16.00))),
                                                    Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Padding(
                                                            padding: getPadding(
                                                                top: 10),
                                                            child: Text(
                                                                "lbl_more".tr,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtAvenirNextLTProDemi12Bluegray300
                                                                    .copyWith())))
                                                  ])))
                                    ]))
                          ])))
            ])));
  }

  onTapBtnGototasks() {
    Get.offNamed(AppRoutes.tasksScreen);
  }

  onTapColumncontacts() {
    Get.offNamed(AppRoutes.contactsScreen);
  }

  onTapColumnvector5() {
    Get.offNamed(AppRoutes.deallistScreen);
  }

  onTapColumnactivity() {
    Get.offNamed(AppRoutes.activityScreen);
  }

  onTapColumnvector6() {
    Get.offNamed(AppRoutes.moreScreen);
  }
}
