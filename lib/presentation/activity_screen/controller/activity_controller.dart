import '/core/app_export.dart';
import 'package:hbs/presentation/activity_screen/models/activity_model.dart';
import 'package:flutter/material.dart';

class ActivityController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ActivityModel> activityModelObj = ActivityModel().obs;

  late TabController frame293Controller =
      Get.put(TabController(vsync: this, length: 3));

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
