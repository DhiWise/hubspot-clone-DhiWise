import '/core/app_export.dart';
import 'package:hbs/presentation/splash_screen/models/splash_model.dart';
import 'package:flutter/material.dart';
import 'package:hbs/data/models/contactsSearch/post_contacts_search_resp.dart';
import 'package:hbs/data/apiClient/api_client.dart';
import 'package:hbs/data/models/contactsSearch/post_contacts_search_req.dart';

class SplashController extends GetxController {
  Rx<SplashModel> splashModelObj = SplashModel().obs;

  PostContactsSearchResp postContactsSearchResp = PostContactsSearchResp();

  @override
  void onReady() {
    super.onReady();
    PostContactsSearchReq postContactsSearchReq = PostContactsSearchReq();
    this.callCreateContactsSearch(
      postContactsSearchReq.toJson(),
      successCall: _onCreateContactsSearchSuccess,
      errCall: _onCreateContactsSearchError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  void callCreateContactsSearch(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createContactsSearch(
        headers: {
          'Content-type': 'application/json',
        },
        onSuccess: (resp) {
          onCreateContactsSearchSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateContactsSearchError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateContactsSearchSuccess(var response) {
    postContactsSearchResp = PostContactsSearchResp.fromJson(response);
  }

  void onCreateContactsSearchError(var err) {
    if (err is NoInternetException) {
      Get.rawSnackbar(
        messageText: Text(
          '$err',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      );
    }
  }

  void _onCreateContactsSearchSuccess() {
    Get.find<PrefUtils>().setContactList(postContactsSearchResp.results!);
    Get.toNamed(AppRoutes.homeScreen);
  }

  void _onCreateContactsSearchError() {}
}
