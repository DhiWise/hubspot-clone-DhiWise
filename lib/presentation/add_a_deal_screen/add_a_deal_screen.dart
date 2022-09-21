import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';
import 'package:hbs/core/utils/progress_dialog_utils.dart';
import 'package:hbs/core/utils/validation_functions.dart';
import 'package:hbs/data/models/deals/post_deals_req.dart';
import 'package:hbs/presentation/deallist_screen/controller/deallist_controller.dart';
import 'package:hbs/widgets/custom_drop_down1.dart';
import 'package:hbs/widgets/custom_text_form_field.dart';
import 'package:intl/intl.dart';

import 'controller/add_a_deal_controller.dart';

class AddADealScreen extends GetWidget<AddADealController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                              Container(
                                  width: double.infinity,
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: Container(
                                                          width: size.width,
                                                          decoration: BoxDecoration(
                                                              color:
                                                                  ColorConstant
                                                                      .whiteA700,
                                                              boxShadow: [
                                                                BoxShadow(
                                                                    color: ColorConstant
                                                                        .gray70011,
                                                                    spreadRadius:
                                                                        getHorizontalSize(
                                                                            2.00),
                                                                    blurRadius:
                                                                        getHorizontalSize(
                                                                            2.00),
                                                                    offset:
                                                                        Offset(
                                                                            0,
                                                                            0))
                                                              ]),
                                                          child: Container(
                                                              margin: getMargin(
                                                                  left: 16,
                                                                  top: 15,
                                                                  right: 16,
                                                                  bottom: 6),
                                                              child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .end,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                        child: Padding(
                                                                            padding: getPadding(top: 23),
                                                                            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.end, mainAxisSize: MainAxisSize.max, children: [
                                                                              Padding(
                                                                                  padding: getPadding(left: 5, top: 8, bottom: 16),
                                                                                  child: Row(crossAxisAlignment: CrossAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [
                                                                                    GestureDetector(
                                                                                        onTap: () {
                                                                                          onTapImgArrowleft();
                                                                                        },
                                                                                        child: Padding(padding: getPadding(top: 5, bottom: 7), child: CommonImageView(svgPath: ImageConstant.imgArrowleft, height: getSize(16.00), width: getSize(16.00)))),
                                                                                    Padding(padding: getPadding(left: 19), child: Text("lbl_add_a_deal".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtAvenirNextLTProDemi24.copyWith()))
                                                                                  ])),
                                                                              GestureDetector(
                                                                                  onTap: () {
                                                                                    onTapTxtSave();
                                                                                  },
                                                                                  child: Padding(padding: getPadding(top: 14, bottom: 18), child: Text("lbl_save".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtAvenirNextLTProDemi16.copyWith())))
                                                                            ])))
                                                                  ])))),
                                                  Padding(
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
                                                                  .start,
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Row(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  CustomTextFormField(
                                                                    width: 394,
                                                                    focusNode:
                                                                        FocusNode(),
                                                                    controller:
                                                                        controller
                                                                            .dealNameController,
                                                                    hintText:
                                                                        "lbl_deal_title"
                                                                            .tr,
                                                                    validator:
                                                                        (value) {
                                                                      if (value ==
                                                                              null ||
                                                                          value!
                                                                              .isEmpty ||
                                                                          (!isText(
                                                                              value,
                                                                              isRequired: true))) {
                                                                        return "lbl_invalid_title"
                                                                            .tr;
                                                                      }
                                                                      return null;
                                                                    },
                                                                    margin: getMargin(
                                                                        left: 2,
                                                                        top: 2,
                                                                        bottom:
                                                                            3),
                                                                  )
                                                                ]),
                                                          ]))
                                                ]))),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: size.width,
                                            margin: getMargin(top: 28),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300)),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 15,
                                                    right: 16),
                                                child: Text("lbl_pipeline".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtAvenirNextLTProRegular14
                                                        .copyWith()))),
                                        Obx(
                                          () => CustomDropDown1(
                                            width: 394,
                                            focusNode: FocusNode(),
                                            hintText: "lbl_choose_pipeline".tr,
                                            margin: getMargin(
                                                // left: 16, top: 1, right: 16
                                                ),
                                            items: controller.addADealModelObj
                                                .value.dropdownItemList.value,
                                            onChanged: (value) {
                                              controller.onSelected(value);
                                            },
                                          ),
                                        ),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: size.width,
                                            margin: getMargin(top: 16),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300)),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 15,
                                                    right: 16),
                                                child: Text("lbl_deal_stage".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtAvenirNextLTProRegular14
                                                        .copyWith()))),
                                        Obx(
                                          () => CustomDropDown1(
                                              width: 392,
                                              focusNode: FocusNode(),
                                              hintText:
                                                  "msg_choose_deal_sta".tr,
                                              margin: getMargin(
                                                  left: 16, top: 1, right: 16),
                                              items: controller
                                                  .addADealModelObj
                                                  .value
                                                  .dropdownItemList1
                                                  .value,
                                              onChanged: (value) {
                                                controller.onSelected1(value);
                                              }),
                                        ),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: size.width,
                                            margin: getMargin(top: 16),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300)),
                                        CustomTextFormField(
                                            width: 394,
                                            focusNode: FocusNode(),
                                            controller:
                                                controller.amountController,
                                            hintText: "lbl_amount".tr,
                                            validator: (value) {
                                              if (value == null ||
                                                  value.isEmpty ||
                                                  (!isNumeric(value,
                                                      isRequired: true))) {
                                                return "lbl_enter_amount".tr;
                                              }
                                              return null;
                                            },
                                            margin: getMargin(
                                                left: 16, top: 25, right: 16),
                                            alignment: Alignment.centerLeft),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: size.width,
                                            margin: getMargin(top: 30),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300)),
                                        Padding(
                                            padding: getPadding(
                                              left: 16,
                                              top: 14,
                                              right: 16,
                                              // bottom: 13
                                            ),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                      margin:
                                                          getMargin(bottom: 5),
                                                      child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
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
                                                                            10),
                                                                child: Text(
                                                                    "lbl_close_date"
                                                                        .tr,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtAvenirNextLTProRegular14
                                                                        .copyWith())),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 7),
                                                                child: Obx(
                                                                  () => Text(
                                                                    DateFormat(
                                                                            "dd-MM-yyyy")
                                                                        .format(controller
                                                                            .selectedDate
                                                                            .value)
                                                                        .toString(),
                                                                    style: TextStyle(
                                                                        fontSize:
                                                                            10),
                                                                  ),
                                                                ))
                                                          ])),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapImgCalanderIcon();
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              top: 21),
                                                          child: CommonImageView(
                                                              svgPath:
                                                                  ImageConstant
                                                                      .imgCalendar,
                                                              height: getSize(
                                                                  22.00),
                                                              width: getSize(
                                                                  22.00))))
                                                ])),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: size.width,
                                            margin: getMargin(top: 14),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300)),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 16,
                                                    top: 14,
                                                    right: 16),
                                                child: Text("lbl_deal_owner".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtAvenirNextLTProRegular14
                                                        .copyWith()))),
                                        Obx(
                                          () => CustomDropDown1(
                                              width: 392,
                                              focusNode: FocusNode(),
                                              hintText: "lbl_owner".tr,
                                              margin: getMargin(
                                                  left: 16, top: 4, right: 16),
                                              items: controller
                                                  .addADealModelObj
                                                  .value
                                                  .dropdownItemList2
                                                  .value,
                                              onChanged: (value) {
                                                controller.onSelected2(value);
                                              }),
                                        ),
                                        Container(
                                            height: getVerticalSize(1.00),
                                            width: size.width,
                                            margin: getMargin(top: 20),
                                            decoration: BoxDecoration(
                                                color: ColorConstant.gray300)),
                                      ])),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      width: getHorizontalSize(265.00),
                                      margin: getMargin(
                                          left: 82,
                                          top: 22,
                                          right: 81,
                                          bottom: 20),
                                      child: Text("msg_you_can_customi".tr,
                                          maxLines: null,
                                          textAlign: TextAlign.center,
                                          style: AppStyle
                                              .txtAvenirNextLTProRegular14
                                              .copyWith())))
                            ])))))));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.deallistScreen);
  }

  void onTapTxtSave() {
    if (_formKey.currentState!.validate()) {
      var dueDateAsString = DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'")
          .format(DateTime.parse(controller.selectedDate.toString()))
          .toString();

      PostDealsReq postDealsReq = PostDealsReq(
        properties: Properties(
          amount: controller.amountController.text,
          dealname: controller.dealNameController.text,
          closedate: dueDateAsString,
          dealstage: controller.selectedDropDownValue1?.id.toString(),
          pipeline: controller.selectedDropDownValue?.id.toString(),
        ),
      );

      controller.callCreateDeals(
        postDealsReq.toJson(),
        successCall: _onCreateDealsSuccess,
        errCall: _onCreateDealsError,
      );
    }
  }

  void _onCreateDealsSuccess() {
    ProgressDialogUtils.showProgressDialog();
    Future.delayed(Duration(milliseconds: 2000), () {
      ProgressDialogUtils.hideProgressDialog();
      Get.offNamed(AppRoutes.deallistScreen);
    });

  }

  void _onCreateDealsError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Oops",
        middleText: "msg_something_went_wrong".tr);
  }

  onTapImgCalanderIcon() {
    controller.chooseDate();
  }
}
