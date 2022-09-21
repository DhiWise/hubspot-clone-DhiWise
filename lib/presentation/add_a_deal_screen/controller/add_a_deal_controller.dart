import 'package:flutter/material.dart';
import 'package:hbs/presentation/add_a_deal_screen/models/add_a_deal_model.dart';

import '/core/app_export.dart';
import '../../../data/apiClient/api_client.dart';
import '../../../data/models/deals/get_deal_stages_resp.dart';
import '../../../data/models/deals/post_deals_resp.dart';
import '../../../data/models/get_resp.dart';
import '../../../data/models/pipelinesDeals/get_pipelines_deals_resp.dart';

class AddADealController extends GetxController {
  TextEditingController dealNameController = TextEditingController();

  TextEditingController amountController = TextEditingController();

  TextEditingController closedateController = TextEditingController();

  Rx<AddADealModel> addADealModelObj = AddADealModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  GetPipelinesDealsResp getPipelinesDealsResp = GetPipelinesDealsResp();
  GetDealStagesResp getDealStagesResp = GetDealStagesResp();
  GetResp getResp = GetResp();
  PostDealsResp postDealsResp = PostDealsResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetch(
      successCall: _onFetchSuccess,
      errCall: _onFetchError,
    );

    this.callFetchOwners(
      successCall: _onFetchOwnersSuccess,
      errCall: _onFetchOwnersError,
    );
  }

  @override
  void onClose() {
    super.onClose();
    dealNameController.dispose();
    amountController.dispose();
    closedateController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    addADealModelObj.value.dropdownItemList.forEach((element) {
      if (element.id == value.id) {
        element.isSelected = true;
      } else {
        element.isSelected = false;
      }
    });

    this.callFetchStages(
      successCall: _onFetchStagesSuccess,
      errCall: _onFetchStagesError,
    );

    // addADealModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    selectedDropDownValue1 = value as SelectionPopupModel;
    addADealModelObj.value.dropdownItemList1.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    // addADealModelObj.value.dropdownItemList1.refresh();
  }

  onSelected2(dynamic value) {
    selectedDropDownValue2 = value as SelectionPopupModel;
    addADealModelObj.value.dropdownItemList2.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    //addADealModelObj.value.dropdownItemList2.refresh();
  }

  void callFetch({VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchPipelinesDeals(onSuccess: (resp) {
      onFetchSuccess(resp);
      if (successCall != null) {
        successCall();
      }
    }, onError: (err) {
      onFetchError(err);
      if (errCall != null) {
        errCall();
      }
    });
  }

  void onFetchSuccess(var response) {
    getPipelinesDealsResp = GetPipelinesDealsResp.fromJson(response);

    for (int i = 0; i < getPipelinesDealsResp.results!.length; i++) {
      var name = getPipelinesDealsResp.results![i].label.toString();
      var pipelineId = getPipelinesDealsResp.results![i].id.toString();
      addADealModelObj.value.dropdownItemList.add(
        SelectionPopupModel(
            id: pipelineId, title: name, isSelected: i == 0 ? true : false),
      );
    }
  }

  void onFetchError(var err) {
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

  void _onFetchSuccess() {}

  void _onFetchError() {}

  void callFetchStages(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetchDealStages(onSuccess: (resp) {
      onFetchStagesSuccess(resp);
      if (successCall != null) {
        successCall();
      }
    }, onError: (err) {
      onFetchStagesError(err);
      if (errCall != null) {
        errCall();
      }
    });
  }

  void onFetchStagesSuccess(var response) {
    getDealStagesResp = GetDealStagesResp.fromJson(response);
    addADealModelObj.value.dropdownItemList1.clear();
    for (int i = 0; i < getDealStagesResp.results!.length; i++) {
      var name = getDealStagesResp.results![i].label.toString();
      var id = getDealStagesResp.results![i].id.toString();
      addADealModelObj.value.dropdownItemList1.add(
        SelectionPopupModel(
            id: id, title: name, isSelected: i == 0 ? true : false),
      );
    }
  }

  void onFetchStagesError(var err) {
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

  void _onFetchStagesSuccess() {}

  void _onFetchStagesError() {}

  void callFetchOwners(
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetch(onSuccess: (resp) {
      onFetchOwnersSuccess(resp);
      if (successCall != null) {
        successCall();
      }
    }, onError: (err) {
      onFetchOwnersError(err);
      if (errCall != null) {
        errCall();
      }
    });
  }

  void onFetchOwnersSuccess(var response) {
    getResp = GetResp.fromJson(response);

    if (getResp.results != null && (getResp.results?.isNotEmpty ?? false)) {
      // for(int i=0;i<=getResp.results!.length;i++) {
      for (var item in (getResp.results ?? [])) {
        var name = item.firstName.toString() + " " + item.lastName.toString();
        var id = item.id.toString();
        addADealModelObj.value.dropdownItemList2.add(
          SelectionPopupModel(
              id: id,
              title: name,
              isSelected: getResp.results?.first == item ? true : false),
        );
      }
    }
  }

  void onFetchOwnersError(var err) {
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

  void _onFetchOwnersSuccess() {}

  void _onFetchOwnersError() {}

  var selectedDate = (DateTime.now().add(Duration(days: 3))).obs;

  void callCreateDeals(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createDeals(
        headers: {
          'Content-type': 'application/json',
        },
        onSuccess: (resp) {
          onCreateDealsSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateDealsError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateDealsSuccess(var response) {
    //postDealsResp = PostDealsResp.fromJson(response);
  }

  void onCreateDealsError(var err) {
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

  chooseDate() async {
    DateTime? pickedDate = await showDatePicker(
        context: Get.context!,
        initialDate: selectedDate.value,
        firstDate: DateTime(2000),
        lastDate: DateTime(2024),
        //initialEntryMode: DatePickerEntryMode.input,
        // initialDatePickerMode: DatePickerMode.year,
        helpText: 'Select DOB',
        cancelText: 'Close',
        confirmText: 'Confirm',
        errorFormatText: 'Enter valid date',
        errorInvalidText: 'Enter valid date range',
        fieldLabelText: 'DOB',
        fieldHintText: 'Month/Date/Year',
        selectableDayPredicate: disableDate);
    if (pickedDate != null && pickedDate != selectedDate.value) {
      selectedDate.value = pickedDate;
    }
  }

  bool disableDate(DateTime day) {
    if ((day.isAfter(DateTime.now().subtract(Duration(days: 1)))
        //&& day.isBefore(DateTime.now().add(Duration(days: 5)))
        )) {
      return true;
    }
    return false;
  }
}
