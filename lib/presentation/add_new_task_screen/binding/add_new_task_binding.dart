import '../controller/add_new_task_controller.dart';
import 'package:get/get.dart';

class AddNewTaskBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddNewTaskController());
  }
}
