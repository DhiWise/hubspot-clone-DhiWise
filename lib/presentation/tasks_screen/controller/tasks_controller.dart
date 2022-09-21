import '/core/app_export.dart';
import 'package:hbs/presentation/tasks_screen/models/tasks_model.dart';
import 'package:flutter/material.dart';

class TasksController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<TasksModel> tasksModelObj = TasksModel().obs;

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
