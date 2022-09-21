import 'controller/activity_controller.dart';
import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';
import 'package:hbs/presentation/activity_all_widget_page/activity_all_widget_page.dart';
import 'package:hbs/presentation/activity_email_open_page/activity_email_open_page.dart';
import 'package:hbs/presentation/activity_email_sent_widget_page/activity_email_sent_widget_page.dart';
import 'package:hbs/widgets/custom_floating_button.dart';

class ActivityScreen extends GetWidget<ActivityController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Column(children: [
              Container(
                  decoration:
                  AppDecoration.fillGray50,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment:
                      CrossAxisAlignment.start,
                      mainAxisAlignment:
                      MainAxisAlignment.start,
                      children: [
                        Container(
                            child: Column(
                                mainAxisSize:
                                MainAxisSize.min,
                                crossAxisAlignment:
                                CrossAxisAlignment
                                    .center,
                                mainAxisAlignment:
                                MainAxisAlignment
                                    .start,
                                children: [
                                  Align(
                                      alignment: Alignment
                                          .centerLeft,
                                      child: Container(
                                          width: double
                                              .infinity,
                                          decoration:
                                          AppDecoration
                                              .outlineGray7001112,
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                              MainAxisAlignment.start,
                                              children: [
                                                Align(
                                                    alignment: Alignment
                                                        .centerLeft,
                                                    child: Padding(
                                                        padding: getPadding(left: 25, top: 45),
                                                        child: Text("lbl_activity_feed".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtAvenirNextLTProDemi24.copyWith()))),
                                                Container(
                                                    width: getHorizontalSize(
                                                        399.00),
                                                    margin: getMargin(
                                                        top: 20,
                                                    ),
                                                    child: TabBar(
                                                        controller: controller.frame293Controller,
                                                        tabs: [
                                                          Tab(text: "lbl_all_activities".tr),
                                                          Tab(text: "lbl_email_opens".tr),
                                                          Tab(text: "lbl_sent_emails".tr)
                                                        ],
                                                        labelColor: ColorConstant.bluegray800,
                                                        unselectedLabelColor: ColorConstant.bluegray700))
                                              ]))),
                                  Container(
                                      margin: getMargin(
                                          left: 16,
                                          top: 24,
                                          right: 16),
                                      height:
                                      getVerticalSize(
                                          619.00),
                                      child: TabBarView(
                                          controller:
                                          controller
                                              .frame293Controller,
                                          children: [
                                            ActivityAllWidgetPage(),
                                            ActivityEmailOpenPage(),
                                            ActivityEmailSentWidgetPage()
                                          ]))
                                ]))
                      ])),
              Expanded(
                  child: Container(
                      width: size.width,
                      child: SingleChildScrollView(
                          child: Container(
                              height: size.height,
                              width: size.width,
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        ),
                                    CustomFloatingButton(
                                        height: 70,
                                        width: 70,
                                        margin: getMargin(
                                            left: 16,
                                            top: 20,
                                            right: 16,
                                            bottom: 20),
                                        alignment: Alignment.bottomRight,
                                        child: CommonImageView(
                                            svgPath: ImageConstant.imgPlus70X70,
                                            height: getVerticalSize(35.00),
                                            width: getHorizontalSize(35.00)))
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
                      child:Container(
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
                                                            .imgUser,
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
                                                                .txtAvenirNextLTProDemi12Bluegray300
                                                                .copyWith())))
                                              ])),),
                  GestureDetector(
                      onTap: () {
                        onTapColumnvector1();
                      },
                      child:Container(
                                          margin: getMargin(top: 5, bottom: 2),
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
                                                            left: 1, right: 1),
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
                                                    padding: getPadding(top: 9),
                                                    child: Text("lbl_deals".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtAvenirNextLTProDemi12Bluegray300
                                                            .copyWith()))
                                              ])),),
                                      Container(
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
                                                            .imgMail22X22,
                                                        height: getSize(22.00),
                                                        width: getSize(22.00))),
                                                Align(
                                                    alignment:
                                                        Alignment.centerLeft,
                                                    child: Padding(
                                                        padding:
                                                            getPadding(top: 7),
                                                        child: Text(
                                                            "lbl_activity".tr,
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
                        onTapColumnvector2();
                      },
                      child:Container(
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
                                                            .imgMenu,
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
  onTapColumncontacts() {
    Get.toNamed(AppRoutes.contactsScreen);
  }

  onTapColumnvector1() {
    Get.toNamed(AppRoutes.deallistScreen);
  }

  onTapColumnvector2() {
    Get.toNamed(AppRoutes.moreScreen);
  }
}
