import 'dart:ui';

import 'package:hbs/data/apiClient/api_client.dart';
import 'package:hbs/data/models/events/get_events_resp.dart';

import '../models/activity_email_open_item_model.dart';
import '/core/app_export.dart';
import 'package:hbs/presentation/activity_email_open_page/models/activity_email_open_model.dart';

class ActivityEmailOpenController extends GetxController {
  ActivityEmailOpenController(this.activityEmailOpenModelObj);

  Rx<ActivityEmailOpenModel> activityEmailOpenModelObj;

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
/*    if (err is NoInternetException) {
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
    List<ActivityEmailOpenItemModel> activityEmailOpenItemList = [];

    if (getEventsResp!.events! != null && getEventsResp!.events!.isNotEmpty) {
      for (var element in getEventsResp!.events!) {
        if(element.type == "OPEN"){
          var listellipsefive1ItemModel = ActivityEmailOpenItemModel();
          listellipsefive1ItemModel.wassentemailTxt.value = element.recipient!.toString();
          listellipsefive1ItemModel.typeTxt.value = element.type!.toString();
          listellipsefive1ItemModel.deviceType.value = (element.deviceType != null) ? element.deviceType!.toString() : "";
          listellipsefive1ItemModel.timeTxt.value = element.created!.toString();
          activityEmailOpenItemList.add(listellipsefive1ItemModel);
        }
      }
    }
    activityEmailOpenModelObj.value.activityEmailOpenItemList.value = activityEmailOpenItemList;
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
