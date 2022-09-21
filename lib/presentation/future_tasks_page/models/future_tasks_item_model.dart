import 'package:get/get.dart';
import 'package:hbs/core/utils/image_constant.dart';

class FutureTasksItemModel {
  Rx<String> checkmarkImg = Rx('...');
  Rx<String> callTxt = Rx('Lorem ipsum dolor sit amet');
  Rx<String> textTxt = Rx('Lorem ipsum dolor sit amet');
  Rx<String> timeTxt = Rx('Lorem ipsum dolor sit amet');
  Rx<String> taskStatusImg = Rx(ImageConstant.imgCheckmark28X28);
  Rx<String> taskContact = Rx('Lorem ipsum dolor sit amet');
}
