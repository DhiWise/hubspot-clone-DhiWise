import '../controller/add_a_deal_controller.dart';
import 'package:get/get.dart';

class AddADealBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AddADealController());
  }
}
