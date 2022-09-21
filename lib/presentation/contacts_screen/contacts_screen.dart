import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';
import 'package:hbs/presentation/companies_page/companies_page.dart';
import 'package:hbs/presentation/contactswidget_page/contactswidget_page.dart';

import 'controller/contacts_controller.dart';

class ContactsScreen extends GetWidget<ContactsController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Column(children: [
              Expanded(
                  child: Container(
                      width: size.width,
                      child: Container(
                          //height: size.height,
                          width: size.width,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                          Container(
                                              width: double.infinity,
                                              decoration: AppDecoration
                                                  .outlineGray7001112,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
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
                                                                left: 25,
                                                                top: 45,
                                                                right: 15),
                                                            child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .center,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                      "lbl_contacts"
                                                                          .tr,
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
                                                                      padding: getPadding(
                                                                          top:
                                                                              3,
                                                                          bottom:
                                                                              1),
                                                                      child: CommonImageView(
                                                                          svgPath: ImageConstant
                                                                              .imgSearch,
                                                                          height: getSize(
                                                                              20.00),
                                                                          width:
                                                                              getSize(20.00)))
                                                                ]))),
                                                    Container(
                                                        width:
                                                            getHorizontalSize(
                                                                250.00),
                                                        margin: getMargin(
                                                            //left: 16,
                                                            top: 26,
                                                            ),
                                                        child: TabBar(
                                                            controller: controller
                                                                .frame292Controller,
                                                            tabs: [
                                                              Tab(
                                                                  text:
                                                                      "lbl_contacts"
                                                                          .tr),
                                                              Tab(
                                                                  text:
                                                                      "lbl_companies"
                                                                          .tr)
                                                            ],
                                                            labelColor:
                                                                ColorConstant
                                                                    .bluegray800,
                                                            unselectedLabelColor:
                                                                ColorConstant
                                                                    .bluegray700))
                                                  ])),
                                          Container(
                                              width: double.infinity,
                                              margin: getMargin(top: 16),
                                              decoration:
                                                  AppDecoration.fillGray50,
                                              child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Container(
                                                        height: getVerticalSize(
                                                            620.00),
                                                        child: TabBarView(
                                                            controller: controller
                                                                .frame292Controller,
                                                            children: [
                                                              ContactswidgetPage(),
                                                              CompaniesPage()
                                                            ]))
                                                  ]))
                                        ]))),
                              ])))),
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
                                      Container(
                                          margin: getMargin(top: 3, bottom: 2),
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
                                                            .imgUser22X18,
                                                        height: getVerticalSize(
                                                            22.00),
                                                        width:
                                                            getHorizontalSize(
                                                                18.00))),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            getPadding(top: 6),
                                                        child: Text(
                                                            "lbl_contacts".tr,
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
                                          onTapColumnvector();
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
                                          onTapColumnmail();
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
                                            onTapColumnmenu();
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

  onTapColumnhome() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapColumnvector() {
    Get.toNamed(AppRoutes.deallistScreen);
  }

  onTapColumnmail() {
    Get.toNamed(AppRoutes.activityScreen);
  }

  onTapColumnmenu() {
    Get.toNamed(AppRoutes.moreScreen);
  }
}
