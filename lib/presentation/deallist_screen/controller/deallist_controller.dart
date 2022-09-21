import 'package:flutter/material.dart';
import 'package:hbs/data/apiClient/api_client.dart';
import 'package:hbs/data/models/deals/get_deal_stages_resp.dart';
import 'package:hbs/data/models/read/post_read_req.dart';
import 'package:hbs/data/models/search/post_search_req.dart';
import 'package:hbs/data/models/search/post_search_resp.dart';
import 'package:hbs/presentation/deallist_screen/models/deallist_model.dart';

import '/core/app_export.dart';
import '../models/deallist_item_model.dart';

class DeallistController extends GetxController {
  Rx<DeallistModel> deallistModelObj = DeallistModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  PostSearchResp postSearchResp = PostSearchResp();
  GetDealStagesResp getDealStagesResp = GetDealStagesResp();

  @override
  void onReady() {
    super.onReady();
    PostSearchReq postSearchReq = PostSearchReq();
    this.callCreateSearch(
      postSearchReq.toJson(),
      successCall: _onCreateSearchSuccess,
      errCall: _onCreateSearchError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    deallistModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    deallistModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    selectedDropDownValue1 = value as SelectionPopupModel;
    deallistModelObj.value.dropdownItemList1.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });

    var sortedBy = ["dealname"];
    if (value.id == "2") {
      sortedBy = ["createdate"];
    } else if (value.id == "3") {
      sortedBy = ["dealstage"];
    }
    PostSearchReq postSearchReq = PostSearchReq();
    postSearchReq.limit = 50;
    postSearchReq.after = 0;
    postSearchReq.properties = [
      "amount",
      "createdate",
      "dealname",
      "dealstage",
      "hs_object_id",
      "hs_lastmodifieddate",
      "hubspot_owner_id",
      "pipeline"
    ];
    postSearchReq.sorts = sortedBy;

    this.callCreateSearch(
      postSearchReq.toJson(),
      successCall: _onCreateSearchSuccess,
      errCall: _onCreateSearchError,
    );
    deallistModelObj.value.dropdownItemList1.refresh();
  }

  void callCreateSearch(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createSearch(
        headers: {
          'Content-type': 'application/json',
        },
        onSuccess: (resp) {
          onCreateSearchSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateSearchError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateSearchSuccess(var response) {
    postSearchResp = PostSearchResp.fromJson(response);
  }

  void onCreateSearchError(var err) {
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

  Future<void> _onCreateSearchSuccess() async {
    PostReadReq postReadReq = PostReadReq();
    postReadReq.inputs = <Inputs>[];
    postReadReq.inputs?.add(Inputs(id: "25691512704"));

    await this.callFetchStages(
      successCall: _onFetchStagesSuccess,
      errCall: _onFetchStagesError,
    );

    var stageLabel = {};
    if (getDealStagesResp!.results != null &&
        getDealStagesResp!.results!.isNotEmpty) {
      for (var element in getDealStagesResp!.results!) {
        var name = element.label.toString();
        var id = element.id.toString();
        stageLabel[id] = name;
      }
    }

    List<DeallistItemModel> deallistItemModelList = [];
    if (postSearchResp.results != null) {
      for (var element in postSearchResp.results!) {
        var deallistItemModel = DeallistItemModel();
        deallistItemModel.dealName.value =
            element.properties!.dealname!.toString();
        deallistItemModel.dealPipeline.value =
            element.properties!.pipeline != null
                ? element.properties!.pipeline!.toString()
                : "";

        deallistItemModel.stage.value = stageLabel[element.properties!.dealstage!.toString()];
        deallistItemModel.amount.value = element.properties!.amount!;

        deallistItemModelList.add(deallistItemModel);
      }
    }
    deallistModelObj.value.deallistItemList.value = deallistItemModelList;
  }

  void _onCreateSearchError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Error",
        middleText: "msg_something_went_wrong".tr);
  }

  void _onFetchError() {}

  Future callFetchStages(
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
}
