import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';
import 'package:hbs/widgets/custom_drop_down.dart';

import '../companies_page/widgets/companies_item_widget.dart';
import 'controller/companies_controller.dart';
import 'models/companies_item_model.dart';
import 'models/companies_model.dart';

// ignore_for_file: must_be_immutable
class CompaniesPage extends StatelessWidget {
  CompaniesController controller =
      Get.put(CompaniesController(CompaniesModel().obs));

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: getPadding(left: 16, right: 16),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomDropDown(
                            width: 145,
                            focusNode: FocusNode(),
                            icon: Container(
                                margin: getMargin(left: 10, right: 8),
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgArrowdown)),
                            hintText: "msg_all_contacts_42".tr,
                            padding: DropDownPadding.PaddingTB11,
                            items: controller
                                .companiesModelObj.value.dropdownItemList,
                            onChanged: (value) {
                              controller.onSelected(value);
                            }),
                        CustomDropDown(
                            width: 175,
                            focusNode: FocusNode(),
                            icon: Container(
                                margin: getMargin(left: 10, right: 8),
                                child: CommonImageView(
                                    svgPath: ImageConstant.imgArrowdown)),
                            hintText: "msg_sorted_by_first".tr,
                            margin: getMargin(left: 9),
                            fontStyle:
                                DropDownFontStyle.AvenirNextLTProRegular14,
                            items: controller
                                .companiesModelObj.value.dropdownItemList1,
                            onChanged: (value) {
                              controller.onSelected1(value);
                            })
                      ]))),
          Container(
              height: getVerticalSize(1.00),
              width: size.width,
              margin: getMargin(top: 16),
              decoration: BoxDecoration(color: ColorConstant.gray300)),
          Align(
              alignment: Alignment.centerLeft,
              child: Obx(() => ListView.builder(
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: controller
                      .companiesModelObj.value.companiesItemList.length,
                  itemBuilder: (context, index) {
                    CompaniesItemModel model = controller
                        .companiesModelObj.value.companiesItemList[index];
                    return CompaniesItemWidget(model);
                  }))),
          Container(
              height: getVerticalSize(1.00),
              width: size.width,
              //margin: getMargin(top: 471),
              decoration: BoxDecoration(color: ColorConstant.gray300))
        ])));
  }
}
