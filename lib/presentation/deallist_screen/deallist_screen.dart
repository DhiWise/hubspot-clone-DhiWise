import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';
import 'package:hbs/widgets/custom_drop_down.dart';
import 'package:hbs/widgets/custom_floating_button.dart';

import '../deallist_screen/widgets/deallist_item_widget.dart';
import 'controller/deallist_controller.dart';
import 'models/deallist_item_model.dart';

class DeallistScreen extends GetWidget<DeallistController> {
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
                                  width: size.width,
                                  decoration: BoxDecoration(
                                      color: ColorConstant.whiteA700,
                                      boxShadow: [
                                        BoxShadow(
                                            color: ColorConstant.gray70011,
                                            spreadRadius:
                                                getHorizontalSize(2.00),
                                            blurRadius: getHorizontalSize(2.00),
                                            offset: Offset(0, 0))
                                      ]),
                                  child: Container(
                                      margin: getMargin(
                                          left: 26,
                                          top: 15,
                                          right: 16,
                                          bottom: 20),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                                padding: getPadding(
                                                    top: 32, right: 1),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 1),
                                                          child: Text(
                                                              "lbl_deals".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtAvenirNextLTProDemi24
                                                                  .copyWith())),
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 2),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgSearch,
                                                              height: getSize(
                                                                  20.00),
                                                              width: getSize(
                                                                  20.00)))
                                                    ]))
                                          ]))),
                              Padding(
                                  padding:
                                      getPadding(left: 16, top: 16, right: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        CustomDropDown(
                                            width: 125,
                                            focusNode: FocusNode(),
                                            icon: Container(
                                                margin: getMargin(
                                                    left: 10, right: 8),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdown)),
                                            hintText: "All Deals",
                                            padding:
                                                DropDownPadding.PaddingTB11,
                                            items: controller.deallistModelObj
                                                .value.dropdownItemList,
                                            onChanged: (value) {
                                              controller.onSelected(value);
                                            }),
                                        CustomDropDown(
                                            width: 125,
                                            focusNode: FocusNode(),
                                            icon: Container(
                                                margin: getMargin(
                                                    left: 10, right: 8),
                                                child: CommonImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdown)),
                                            hintText: "Create date".tr,
                                            margin: getMargin(left: 14),
                                            padding:
                                                DropDownPadding.PaddingTB11,
                                            items: controller.deallistModelObj
                                                .value.dropdownItemList1,
                                            onChanged: (value) {
                                              controller.onSelected1(value);
                                            })
                                      ])),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Obx(() => ListView.builder(
                                      physics: BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: controller.deallistModelObj
                                          .value.deallistItemList.length,
                                      itemBuilder: (context, index) {
                                        DeallistItemModel model = controller
                                            .deallistModelObj
                                            .value
                                            .deallistItemList[index];
                                        return DeallistItemWidget(model);
                                      })))
                            ]))
                      ])),
              Expanded(
                  child: Container(
                      width: size.width,
                      child: Container(
                          height: size.height,
                          width: size.width,
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                ),
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
                                      Container(
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
                                                            svgPath: ImageConstant
                                                                .imgVector17X30,
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
                                                            .txtAvenirNextLTProDemi12
                                                            .copyWith()))
                                              ])),
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
                                          onTapColumnvector8();
                                        },
                                        child: Container(
                                            margin:
                                                getMargin(top: 10),
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
                            svgPath: ImageConstant.imgFloatingicon,
                            height: getVerticalSize(35.00),
                            width: getHorizontalSize(35.00)))))));
  }

  onTapColumnhome() {
    Get.toNamed(AppRoutes.homeScreen);
  }

  onTapColumncontacts() {
    Get.toNamed(AppRoutes.contactsScreen);
  }

  onTapColumnactivity() {
    Get.toNamed(AppRoutes.activityScreen);
  }

  onTapColumnvector8() {
    Get.toNamed(AppRoutes.moreScreen);
  }

  onTapBtntf() {
    //Get.toNamed(AppRoutes.addADealScreen);
    Get.offNamed(AppRoutes.addADealScreen);
  }
}
