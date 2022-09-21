import 'package:get/get.dart';

import '../../../core/utils/image_constant.dart';

class TasksItemModel {
  Rx<String> checkmarkImg = Rx('...');

  Rx<String> callTxt = Rx('Lorem ipsum dolor sit amet');

  Rx<String> timeTxt = Rx('Lorem ipsum dolor sit amet');

  Rx<String> frame250Txt = Rx('Lorem ipsum dolor sit amet');

  Rx<String> taskStatusImg = Rx(ImageConstant.imgCheckmark28X28);
  Rx<String> taskContact = Rx('Lorem ipsum dolor sit amet');
}
