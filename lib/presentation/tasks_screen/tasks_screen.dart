import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';
import 'package:hbs/presentation/future_tasks_page/future_tasks_page.dart';
import 'package:hbs/presentation/taskswidget_page/taskswidget_page.dart';

import 'controller/tasks_controller.dart';

class TasksScreen extends GetWidget<TasksController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Column(children: [
              Container(
                  decoration: AppDecoration.fillGray50,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                              Container(
                                  width: double.infinity,
                                  decoration: AppDecoration.outlineGray7001112,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.center,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 23,
                                                    right: 16),
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
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 4,
                                                              top: 8,
                                                              bottom: 16),
                                                          child: Row(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              children: [
                                                                GestureDetector(
                                                                    onTap: () {
                                                                      onTapImgArrowleft();
                                                                    },
                                                                    child: Padding(
                                                                        padding: getPadding(
                                                                            bottom:
                                                                                5),
                                                                        child: CommonImageView(
                                                                            svgPath:
                                                                                ImageConstant.imgArrowleft,
                                                                            height: getSize(16.00),
                                                                            width: getSize(16.00)))),
                                                                Padding(
                                                                    padding: getPadding(
                                                                        top:
                                                                        15,
                                                                        left:
                                                                            20),
                                                                    child: Text(
                                                                        "lbl_tasks"
                                                                            .tr,
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtAvenirNextLTProDemi24
                                                                            .copyWith()))
                                                              ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 15,
                                                              bottom: 10),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgSearch,
                                                              height: getSize(
                                                                  20.00),
                                                              width: getSize(
                                                                  20.00)))
                                                    ]))),
                                        Container(
                                            width: getHorizontalSize(
                                                278.00),

                                            child: TabBar(
                                                controller: controller
                                                    .frame292Controller,
                                                tabs: [
                                                  Tab(text: "lbl_due_tasks".tr),
                                                  Tab(
                                                      text: "lbl_future_tasks"
                                                          .tr),
                                                ],
                                                labelColor:
                                                    ColorConstant.bluegray800,
                                                unselectedLabelColor:
                                                    ColorConstant.bluegray700))
                                      ])),
                            ]))
                      ])),
              Expanded(
                child: Container(
                    margin: EdgeInsets.only(top: getVerticalSize(16.00)),
                    height: getVerticalSize(287.00),
                    child: TabBarView(
                        controller: controller.frame292Controller,
                        children: [TaskswidgetPage(), FutureTasksPage()])),
              ),
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
                                padding: getPadding(top: 10),
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
                                          onTapColumnvector3();
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
                                          onTapColumnvector4();
                                        },
                                        child: Container(
                                            margin:
                                                getMargin(top: 9, bottom: 2),
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
                                                              .imgMenu,
                                                          height:
                                                              getVerticalSize(
                                                                  12.00),
                                                          width:
                                                              getHorizontalSize(
                                                                  16.00))),
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
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
                                                ])),
                                      )
                                    ]))
                          ])))
            ]),
            floatingActionButton: Padding(
                padding: const EdgeInsets.only(bottom: 90.0),
                child: FloatingActionButton(
                    backgroundColor: ColorConstant.deepOrange300,
                    onPressed: () {
                      onTapBtntf();
                    },
                    child: Container(
                        height: getSize(70.00),
                        width: getSize(70.00),
                        padding: EdgeInsets.all(getSize(10)),
                        decoration: BoxDecoration(
                            color: ColorConstant.deepOrange300,
                            borderRadius: BorderRadius.circular(
                                getHorizontalSize(35.00))),
                        child: CommonImageView(
                            svgPath: ImageConstant.imgPlus70X70,
                            height: getVerticalSize(35.00),
                            width: getHorizontalSize(35.00)))))));
  }

  onTapImgArrowleft() {
    Get.offNamed(AppRoutes.homeScreen);
  }

  onTapColumncontacts() {
    Get.toNamed(AppRoutes.contactsScreen);
  }

  onTapColumnvector3() {
    Get.toNamed(AppRoutes.deallistScreen);
  }

  onTapColumnactivity() {
    Get.toNamed(AppRoutes.activityScreen);
  }

  onTapColumnvector4() {
    Get.toNamed(AppRoutes.moreScreen);
  }

  onTapBtntf() {
    Get.offNamed(AppRoutes.addNewTaskScreen);
  }
}
