import 'dart:ui';

import 'package:hbs/data/apiClient/api_client.dart';
import 'package:hbs/data/models/events/get_events_resp.dart';

import '../models/activity_all_item_model.dart';
import '/core/app_export.dart';
import 'package:hbs/presentation/activity_all_widget_page/models/activity_all_widget_model.dart';

class ActivityAllWidgetController extends GetxController {
  ActivityAllWidgetController(this.activityAllWidgetModelObj);

  Rx<ActivityAllWidgetModel> activityAllWidgetModelObj;

  GetEventsResp getEventsResp = GetEventsResp();
  @override
  void onReady() {
    super.onReady();
    this.callFetchEvents(
      successCall: _onFetchEventsSuccess,
      errCall: _onFetchEventsError,
    );
  }

  void callFetchEvents(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchEvents(onSuccess: (resp) {
      onFetchEventsSuccess(resp);
      if (successCall != null) {
        successCall();
      }
    }, onError: (err) {
      onFetchEventsError(err);
      if (errCall != null) {
        errCall();
      }
    });
  }

  void onFetchEventsSuccess(var response) {
    getEventsResp = GetEventsResp.fromJson(response);
  }

  void onFetchEventsError(var err) {
    /*if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }*/
  }

  void _onFetchEventsSuccess() {
    List<ActivityAllItemModel> activityAllItemList = [];

    if (getEventsResp!.events! != null && getEventsResp!.events!.isNotEmpty) {
      for (var element in getEventsResp!.events!) {
        var activityAllItemModel = ActivityAllItemModel();
        activityAllItemModel.wassentemailTxt.value = element.recipient!.toString();
        activityAllItemModel.typeTxt.value = element.type!.toString();
        activityAllItemModel.deviceType.value = (element.deviceType != null) ? element.deviceType!.toString() : "";
        activityAllItemModel.timeTxt.value = element.created!.toString();
        activityAllItemList.add(activityAllItemModel);
      }
    }
    activityAllWidgetModelObj.value.activityAllItemList.value = activityAllItemList;
  }

  void _onFetchEventsError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Error",
        middleText: "msg_something_went_wrong".tr);
  }

  @override
  void onClose() {
    super.onClose();
  }
}
