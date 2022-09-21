import '../controller/contactswidget_controller.dart';
import '../models/contacts_item_model.dart';
import 'package:flutter/material.dart';
import 'package:hbs/core/app_export.dart';

// ignore: must_be_immutable
class ContactsItemWidget extends StatelessWidget {
  ContactsItemWidget(this.contactsItemModelObj);

  ContactsItemModel contactsItemModelObj;

  var controller = Get.find<ContactswidgetController>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: getMargin(
          top: 0.5,
          bottom: 0.5,
        ),
        decoration: AppDecoration.fillWhiteA700,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: getVerticalSize(
                1.00,
              ),
              width: size.width,
              decoration: BoxDecoration(
                color: ColorConstant.gray300,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 16,
                top: 18,
                right: 16,
                bottom: 21,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    margin: getMargin(
                      bottom: 3,
                    ),
                    child:  Obx(
                          () =>RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: contactsItemModelObj.firstName.value + " ",
                            style: TextStyle(
                              color: ColorConstant.bluegray800,
                              fontSize: getFontSize(
                                18,
                              ),
                              fontFamily: 'Avenir Next LT Pro',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          TextSpan(
                            text: contactsItemModelObj.lastName.value,
                            style: TextStyle(
                              color: ColorConstant.bluegray800,
                              fontSize: getFontSize(
                                18,
                              ),
                              fontFamily: 'Avenir Next LT Pro',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    )),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
