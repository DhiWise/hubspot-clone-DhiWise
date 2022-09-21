import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';
import 'package:hbs/core/utils/progress_dialog_utils.dart';
import 'package:hbs/core/utils/validation_functions.dart';
import 'package:hbs/widgets/custom_drop_down.dart';
import 'package:hbs/widgets/custom_drop_down1.dart' as CustomDropDown1;
import 'package:hbs/widgets/custom_text_form_field.dart';
import 'package:intl/intl.dart';

import '../../data/models/tasks/post_tasks_req.dart';
import 'controller/add_new_task_controller.dart';

class AddNewTaskScreen extends GetWidget<AddNewTaskController> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                child: SingleChildScrollView(
                    child: Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Container(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                                width: size.width,
                                                decoration: BoxDecoration(
                                                    color:
                                                        ColorConstant.whiteA700,
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
                                                          offset: Offset(0, 0))
                                                    ]),
                                                child: Container(
                                                    margin: getMargin(
                                                        left: 25,
                                                        top: 15,
                                                        right: 15,
                                                        bottom: 15),
                                                    child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .end,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .start,
                                                        children: [
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .center,
                                                              child: Padding(
                                                                  padding:
                                                                      getPadding(
                                                                          top:
                                                                              32,
                                                                          right:
                                                                              3),
                                                                  child: Row(
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Row(
                                                                            crossAxisAlignment:
                                                                                CrossAxisAlignment.end,
                                                                            mainAxisSize: MainAxisSize.min,
                                                                            children: [
                                                                              GestureDetector(
                                                                                  onTap: () {
                                                                                    onTapImgArrowleft();
                                                                                  },
                                                                                  child: Padding(padding: getPadding(bottom: 5), child: CommonImageView(svgPath: ImageConstant.imgArrowleft, height: getSize(16.00), width: getSize(16.00)))),
                                                                              Padding(padding: getPadding(left: 20), child: Text("lbl_new_task".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtAvenirNextLTProDemi24.copyWith()))
                                                                            ]),
                                                                        GestureDetector(
                                                                            onTap:
                                                                                () {
                                                                              onTapTxtSave();
                                                                            },
                                                                            child:
                                                                                Padding(padding: getPadding(bottom: 10), child: Text("lbl_save".tr, overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtAvenirNextLTProDemi16.copyWith())))
                                                                      ])))
                                                        ])))),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Padding(
                                                padding: getPadding(
                                                  left: 16,
                                                  top: 23,
                                                  right: 16,
                                                ),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      CustomTextFormField(
                                                          width: 394,
                                                          focusNode:
                                                              FocusNode(),
                                                          controller: controller
                                                              .taskTitleController,
                                                          hintText:
                                                              "lbl_task_title"
                                                                  .tr,
                                                          margin: getMargin(
                                                              left: 2,
                                                              top: 1,
                                                              bottom: 2),
                                                          fontStyle:
                                                              TextFormFieldFontStyle
                                                                  .AvenirNextLTProDemi20,
                                                          validator: (value) {
                                                            if (value == null ||
                                                                value.isEmpty ||
                                                                (!isText(value,
                                                                    isRequired:
                                                                        true))) {
                                                              return "lbl_invalid_title"
                                                                  .tr;
                                                            }
                                                            return null;
                                                          })
                                                    ])))
                                      ]))),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 10),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Padding(
                                  padding: getPadding(left: 10, top: 15),
                                  child: Row(
                                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                            padding: getPadding(right: 15),
                                            child: CustomDropDown(
                                                width: 110,
                                                focusNode: FocusNode(),
                                                icon: Container(
                                                    margin: getMargin(
                                                        left: 10, right: 10),
                                                    child: CommonImageView(
                                                        svgPath: ImageConstant
                                                            .imgVectorCyan801)),
                                                hintText: "lbl_to_do".tr,
                                                variant: DropDownVariant
                                                    .OutlineGray300,
                                                shape: DropDownShape
                                                    .RoundedBorder4,
                                                padding:
                                                    DropDownPadding.PaddingTB15,
                                                fontStyle: DropDownFontStyle
                                                    .AvenirNextLTProRegular18,
                                                items: controller
                                                    .addNewTaskModelObj
                                                    .value
                                                    .dropdownItemList,
                                                onChanged: (value) {
                                                  controller.onSelected(value);
                                                })),
                                        Padding(
                                          padding: getPadding(right: 15),
                                          child: Container(
                                              decoration: AppDecoration
                                                  .outlineGray300
                                                  .copyWith(
                                                      borderRadius:
                                                          BorderRadiusStyle
                                                              .roundedBorder4),
                                              child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Container(
                                                        height: getVerticalSize(
                                                            22.00),
                                                        child: Obx(
                                                          () => Text(
                                                            DateFormat(
                                                                    "dd-MM-yyyy")
                                                                .format(
                                                                    controller
                                                                        .dueDate
                                                                        .value)
                                                                .toString(),
                                                            style: TextStyle(
                                                                fontSize: 18),
                                                          ),
                                                        )),
                                                    GestureDetector(
                                                        onTap: () {
                                                          onTapImgCalendar();
                                                        },
                                                        child: Padding(
                                                            padding: getPadding(
                                                                left: 7,
                                                                top: 12,
                                                                right: 19,
                                                                bottom: 12),
                                                            child: CommonImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgCalendar,
                                                                height:
                                                                    getVerticalSize(
                                                                        18.00),
                                                                width:
                                                                    getHorizontalSize(
                                                                        16.00))))
                                                  ])),
                                        ),
                                        Padding(
                                          padding: getPadding(right: 15),
                                          child: CustomDropDown(
                                              width: 110,
                                              focusNode: FocusNode(),
                                              icon: Container(
                                                  margin: getMargin(
                                                      left: 10, right: 10),
                                                  child: CommonImageView(
                                                      svgPath: ImageConstant
                                                          .imgVectorCyan801)),
                                              hintText: "Priority".tr,
                                              variant: DropDownVariant
                                                  .OutlineGray300,
                                              shape:
                                                  DropDownShape.RoundedBorder4,
                                              padding:
                                                  DropDownPadding.PaddingTB15,
                                              fontStyle: DropDownFontStyle
                                                  .AvenirNextLTProRegular18,
                                              items: controller
                                                  .addNewTaskModelObj
                                                  .value
                                                  .dropdownItemList2,
                                              onChanged: (value) {
                                                controller.onSelected(value);
                                              }),
                                        )
                                      ])),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 23),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16, top: 23, right: 352),
                                      child: Text("lbl_assign_to".tr,
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtAvenirNextLTProRegular14
                                              .copyWith()))),
                              Obx(
                                () => CustomDropDown1.CustomDropDown1(
                                    width: 394,
                                    focusNode: FocusNode(),
                                    hintText: "lbl_assign_to".tr,
                                    margin:
                                        getMargin(left: 16, top: 1, right: 16),
                                    alignment: Alignment.center,
                                    items: controller.addNewTaskModelObj.value
                                        .dropdownItemList1.value,
                                    onChanged: (value) {
                                      controller.onSelected1(value);
                                    }),
                              ),
                              Container(
                                  height: getVerticalSize(1.00),
                                  width: size.width,
                                  margin: getMargin(top: 10),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.gray300)),
                            ])))))));
  }

  onTapImgArrowleft() {
    Get.toNamed(AppRoutes.tasksScreen);
  }

  onTapImgCalendar() {
    controller.chooseDate();
  }

  void onTapTxtSave() {
    if (_formKey.currentState!.validate()) {
      String taskType = "TODO";
      if (controller.selectedDropDownValue?.id == "1") {
        taskType = "TODO";
      } else if (controller.selectedDropDownValue?.id == "2") {
        taskType = "CALL";
      } else if (controller.selectedDropDownValue?.id == "3") {
        taskType = "EMAIL";
      }

      String taskPriority = "LOW";
      if (controller.selectedDropDownValue?.id == "1") {
        taskPriority = "LOW";
      } else if (controller.selectedDropDownValue?.id == "2") {
        taskPriority = "MEDIUM";
      } else if (controller.selectedDropDownValue?.id == "3") {
        taskPriority = "HIGH";
      }

      PostTasksReq postTasksReq = PostTasksReq(
        properties: Properties(
            hsTaskSubject: controller.taskTitleController.text,
            hsTimestamp: controller.dueDateAsString,
            hubspotOwnerId: controller.selectedDropDownValue1?.id.toString(),
            hsTaskPriority: taskPriority,
            hsTaskType: taskType),
      );

      controller.callCreateTasks(
        postTasksReq.toJson(),
        successCall: _onCreateTasksSuccess,
        errCall: _onCreateTasksError,
      );
    }
  }

  void _onCreateTasksSuccess() {
    ProgressDialogUtils.showProgressDialog();
    Future.delayed(Duration(milliseconds: 2000), () {
      ProgressDialogUtils.hideProgressDialog();
      Get.offNamed(AppRoutes.tasksScreen);
    });

  }

  void _onCreateTasksError() {}
}
