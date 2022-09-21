import '../controller/more_controller.dart';
import 'package:get/get.dart';

class MoreBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MoreController());
  }
}
