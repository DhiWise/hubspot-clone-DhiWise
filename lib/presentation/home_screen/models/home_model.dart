import 'package:get/get.dart';
import 'todays_due_task_item_model.dart';
import 'todays_due_meet_item_model.dart';

class HomeModel {
  Rx<String> durationTxt = Rx('Lorem ipsum dolor sit amet');
  Rx<String> k8MeetingsScheTxt = Rx('Lorem ipsum dolor sit amet');
  RxList<TodaysDueTaskItemModel> listcheckmarkItemList =
      RxList.filled(0, TodaysDueTaskItemModel());

  RxList<TodaysDueMeetItemModel> listtimeFourItemList =
      RxList.filled(0, TodaysDueMeetItemModel());
}
