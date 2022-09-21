import '../controller/activity_controller.dart';
import 'package:get/get.dart';

class ActivityBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ActivityController());
  }
}
