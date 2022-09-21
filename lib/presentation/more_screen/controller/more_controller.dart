import '/core/app_export.dart';
import 'package:hbs/presentation/more_screen/models/more_model.dart';

class MoreController extends GetxController {
  Rx<MoreModel> moreModelObj = MoreModel().obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
