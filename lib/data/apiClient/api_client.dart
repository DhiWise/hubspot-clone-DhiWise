import 'package:hbs/core/app_export.dart';
import 'package:hbs/core/utils/progress_dialog_utils.dart';

import '../../core/constants/appConfig.dart';

class ApiClient extends GetConnect {
  var url = "https://api.hubapi.com";

  @override
  void onInit() {
    super.onInit();
    httpClient.timeout = Duration(seconds: 60);
  }

  ///method can be used for checking internet connection
  ///returns [bool] based on availability of internet
  Future isNetworkConnected() async {
    if (!await Get.find<NetworkInfo>().isConnected()) {
      throw NoInternetException('No Internet Found!');
    }
  }

  /// is `true` when the response status code is between 200 and 299
  ///
  /// user can modify this method with custom logics based on their API response
  bool _isSuccessCall(Response response) {
    return response.isOk;
  }

  Future fetchEvents(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get(
          '$url/email/public/v1/events?hapikey=${AppConfig.hapikey}');
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : "msg_something_went_wrong".tr,
        );
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future createSearch(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
          '$url/crm/v3/objects/deals/search?hapikey=${AppConfig.hapikey}',
          headers: {"content-type": "application/json"},
          body: requestData);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : "msg_something_went_wrong".tr,
        );
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future createCompaniesSearch(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
          '$url/crm/v3/objects/companies/search?hapikey=${AppConfig.hapikey}',
          headers: {"content-type": "application/json"},
          body: requestData);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : "msg_something_went_wrong".tr,
        );
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future createContactsSearch(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
          '$url/crm/v3/objects/contacts/search?hapikey=${AppConfig.hapikey}',
          headers: {"content-type": "application/json"},
          body: requestData);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : "msg_something_went_wrong".tr,
        );
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future createTasks(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
          '$url/crm/v3/objects/tasks?hapikey=${AppConfig.hapikey}',
          headers: {"content-type": "application/json"},
          body: requestData);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : "msg_something_went_wrong".tr,
        );
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future fetch(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get(
          '$url/crm/v3/owners/?limit=100&archived=false&hapikey=${AppConfig.hapikey}');
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : "msg_something_went_wrong".tr,
        );
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future createDeals(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
          '$url/crm/v3/objects/deals?hapikey=${AppConfig.hapikey}',
          headers: {"content-type": "application/json"},
          body: requestData);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : "msg_something_went_wrong".tr,
        );
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future fetchOwners(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get(
          '$url/crm/v3/owners?hapikey=${AppConfig.hapikey}');
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : "msg_something_went_wrong".tr,
        );
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future fetchPipelinesDeals(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get(
          '$url/crm/v3/pipelines/deals?hapikey=${AppConfig.hapikey}');
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : "msg_something_went_wrong".tr,
        );
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future createTasksSearch(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
          '$url/crm/v3/objects/tasks/search?hapikey=${AppConfig.hapikey}',
          headers: {"content-type": "application/json"},
          body: requestData);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : "msg_something_went_wrong".tr,
        );
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future createSearchMeetings(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
          '$url/crm/v3/objects/meetings/search?hapikey=${AppConfig.hapikey}',
          headers: {"content-type": "application/json"},
          body: requestData);
      ProgressDialogUtils.hideProgressDialog();
      if (response.statusCode == 200) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : "msg_something_went_wrong".tr,
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future fetchDealStages(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.get(
          '$url/crm/v3/pipelines/deals/default/stages?hapikey=${AppConfig.hapikey}');
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : "msg_something_went_wrong".tr,
        );
      }
    } catch (error) {
      ProgressDialogUtils.hideProgressDialog();
      onError!(error);
    }
  }

  Future createRead(
      {Function(dynamic data)? onSuccess,
      Function(dynamic error)? onError,
      Map<String, String> headers = const {},
      Map<String, dynamic> queryParams = const {},
      Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
          //'$url/crm/v4/associations/task/contact/batch/read',
          '$url/crm/v4/associations/task/contact/batch/read?hapikey=${AppConfig.hapikey}',
          headers: {"content-type": "application/json"},
          //query: queryParams,
          body: requestData);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : "msg_something_went_wrong".tr,
        );
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }

  Future meetingAssociation(
      {Function(dynamic data)? onSuccess,
        Function(dynamic error)? onError,
        Map<String, String> headers = const {},
        Map<String, dynamic> queryParams = const {},
        Map requestData = const {}}) async {
    ProgressDialogUtils.showProgressDialog();
    try {
      await isNetworkConnected();
      Response response = await httpClient.post(
          '$url/crm/v4/associations/meeting/contact/batch/read?hapikey=${AppConfig.hapikey}',
          headers: {"content-type": "application/json"},
          //query: queryParams,
          body: requestData);
      ProgressDialogUtils.hideProgressDialog();
      if (_isSuccessCall(response)) {
        onSuccess!(response.body);
      } else {
        onError!(
          response.hasError ? response.statusText : "msg_something_went_wrong".tr,
        );
      }
    } catch (error, stackTrace) {
      ProgressDialogUtils.hideProgressDialog();
      Logger.log(error, stackTrace: stackTrace);
      onError!(error);
    }
  }
}
