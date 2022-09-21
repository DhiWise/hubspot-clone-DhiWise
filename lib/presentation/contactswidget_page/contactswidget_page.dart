import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';
import 'package:hbs/widgets/custom_drop_down.dart';

import '../contactswidget_page/widgets/contacts_item_widget.dart';
import 'controller/contactswidget_controller.dart';
import 'models/contacts_item_model.dart';
import 'models/contactswidget_model.dart';

// ignore_for_file: must_be_immutable
class ContactswidgetPage extends StatelessWidget {
  ContactswidgetController controller =
      Get.put(ContactswidgetController(ContactswidgetModel().obs));

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
                                .contactswidgetModelObj.value.dropdownItemList,
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
                                .contactswidgetModelObj.value.dropdownItemList1,
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
                      .contactswidgetModelObj.value.contactsItemList.length,
                  itemBuilder: (context, index) {
                    ContactsItemModel model = controller
                        .contactswidgetModelObj.value.contactsItemList[index];
                    return ContactsItemWidget(model);
                  }))),
          Container(
              height: getVerticalSize(1.00),
              width: size.width,
              decoration: BoxDecoration(color: ColorConstant.gray300))
        ])));
  }
}
