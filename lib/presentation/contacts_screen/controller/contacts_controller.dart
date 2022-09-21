import '/core/app_export.dart';
import 'package:hbs/presentation/contacts_screen/models/contacts_model.dart';
import 'package:flutter/material.dart';

class ContactsController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ContactsModel> contactsModelObj = ContactsModel().obs;

  late TabController frame292Controller =
      //Get.put(TabController(vsync: this, length: 2));
  TabController(vsync: this, length: 2);
  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
