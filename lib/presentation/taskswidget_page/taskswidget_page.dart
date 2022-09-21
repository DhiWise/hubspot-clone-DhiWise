import '../taskswidget_page/widgets/tasks_item_widget.dart';
import 'controller/taskswidget_controller.dart';
import 'models/tasks_item_model.dart';
import 'models/taskswidget_model.dart';
import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';
import 'package:hbs/widgets/custom_drop_down.dart';

// ignore_for_file: must_be_immutable
class TaskswidgetPage extends StatelessWidget {
  TaskswidgetController controller =
      Get.put(TaskswidgetController(TaskswidgetModel().obs));

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
          Padding(
              padding: getPadding(left: 16, right: 16),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomDropDown(
                        width: 109,
                        focusNode: FocusNode(),
                        icon: Container(
                            margin: getMargin(left: 13, right: 8),
                            child: CommonImageView(
                                svgPath: ImageConstant.imgArrowdown)),
                        hintText: "All Types",
                        items: controller
                            .taskswidgetModelObj.value.dropdownItemList,
                        onChanged: (value) {
                          controller.onSelected(value);
                        }),
                    CustomDropDown(
                        width: 185,
                        focusNode: FocusNode(),
                        icon: Container(
                            margin: getMargin(left: 10, right: 8),
                            child: CommonImageView(
                                svgPath: ImageConstant.imgArrowdown)),
                        hintText: "msg_sorted_by_due_d".tr,
                        margin: getMargin(left: 9),
                        fontStyle: DropDownFontStyle.AvenirNextLTProRegular14,
                        items: controller
                            .taskswidgetModelObj.value.dropdownItemList1,
                        onChanged: (value) {
                          controller.onSelected1(value);
                        })
                  ])),
          Container(
              height: getVerticalSize(1.00),
              width: size.width,
              margin: getMargin(top: 16),
              decoration: BoxDecoration(color: ColorConstant.gray300)),
          Align(
              alignment: Alignment.center,
              child: Padding(
                  padding: getPadding(left: 16, top: 14, right: 16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                            padding: getPadding(top: 1),
                            child: Text("lbl_due_today".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtAvenirNextLTProBold12
                                    .copyWith())),
                        Padding(
                            padding: getPadding(bottom: 2),
                            child: Obx(() => Text(
                                controller.taskswidgetModelObj.value
                                    .taskCounterTxt.value,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtAvenirNextLTProRegular12
                                    .copyWith())))
                      ]))),
          Padding(
              padding: getPadding(top: 8),
              child: Obx(() => ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount:
                      controller.taskswidgetModelObj.value.tasksItemList.length,
                  itemBuilder: (context, index) {
                    TasksItemModel model = controller
                        .taskswidgetModelObj.value.tasksItemList[index];
                    return TasksItemWidget(model);
                  })))
        ])));
  }
}
