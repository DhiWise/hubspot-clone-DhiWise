import '../controller/deallist_controller.dart';
import 'package:get/get.dart';

class DeallistBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeallistController());
  }
}
