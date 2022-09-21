
import 'dart:ui';

import 'package:hbs/data/apiClient/api_client.dart';
import 'package:hbs/data/models/events/get_events_resp.dart';
import 'package:hbs/presentation/activity_email_sent_widget_page/models/activity_item_model.dart';

import '/core/app_export.dart';
import 'package:hbs/presentation/activity_email_sent_widget_page/models/activity_email_sent_widget_model.dart';

class ActivityEmailSentWidgetController extends GetxController {
  ActivityEmailSentWidgetController(this.activityEmailSentWidgetModelObj);

  Rx<ActivityEmailSentWidgetModel> activityEmailSentWidgetModelObj;

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
   /* if (err is NoInternetException) {
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
    List<ActivityItemModel> activityItemList = [];

    if (getEventsResp!.events! != null && getEventsResp!.events!.isNotEmpty) {
      for (var element in getEventsResp!.events!) {
        if(element.type == "SENT"){
          var activityItemModel = ActivityItemModel();
          activityItemModel.wassentemailTxt.value = element.recipient!.toString();
          activityItemModel.typeTxt.value = element.type!.toString();
          activityItemModel.deviceType.value = (element.deviceType != null) ? element.deviceType!.toString() : "";
          activityItemModel.timeTxt.value = element.created!.toString();
          activityItemList.add(activityItemModel);
        }
      }
    }
    activityEmailSentWidgetModelObj.value.activityItemList.value = activityItemList;
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
