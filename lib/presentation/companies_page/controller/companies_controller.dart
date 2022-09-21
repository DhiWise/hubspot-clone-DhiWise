import '../models/companies_item_model.dart';
import '/core/app_export.dart';
import 'package:hbs/presentation/companies_page/models/companies_model.dart';
import 'package:flutter/material.dart';
import 'package:hbs/data/models/companiesSearch/post_companies_search_resp.dart';
import 'package:hbs/data/apiClient/api_client.dart';
import 'package:hbs/data/models/companiesSearch/post_companies_search_req.dart';
import 'package:fluttertoast/fluttertoast.dart';

class CompaniesController extends GetxController {
  CompaniesController(this.companiesModelObj);

  Rx<CompaniesModel> companiesModelObj;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  PostCompaniesSearchResp postCompaniesSearchResp = PostCompaniesSearchResp();

  @override
  void onReady() {
    super.onReady();
    PostCompaniesSearchReq postCompaniesSearchReq = PostCompaniesSearchReq();
    this.callCreateCompaniesSearch(
      postCompaniesSearchReq.toJson(),
      successCall: _onCreateCompaniesSearchSuccess,
      errCall: _onCreateCompaniesSearchError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    companiesModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    companiesModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    selectedDropDownValue1 = value as SelectionPopupModel;
    companiesModelObj.value.dropdownItemList1.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });

    var sortedBy = ["name"];
    if (value.id == "2") {
      sortedBy = ["createdate"];
    }

    PostCompaniesSearchReq postCompaniesSearchReq = PostCompaniesSearchReq();

    postCompaniesSearchReq.limit = 50;
    postCompaniesSearchReq.after = 0;
    postCompaniesSearchReq.properties = ["city","createdate","domain","hs_lastmodifieddate","hs_object_id","name","phone","state"];
    postCompaniesSearchReq.sorts = sortedBy;
    this.callCreateCompaniesSearch(
      postCompaniesSearchReq.toJson(),
      successCall: _onCreateCompaniesSearchSuccess,
      errCall: _onCreateCompaniesSearchError,
    );
    companiesModelObj.value.dropdownItemList1.refresh();
  }

  void callCreateCompaniesSearch(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createCompaniesSearch(
        headers: {
          'Content-type': 'application/json',
        },
        onSuccess: (resp) {
          onCreateCompaniesSearchSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateCompaniesSearchError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateCompaniesSearchSuccess(var response) {
    postCompaniesSearchResp = PostCompaniesSearchResp.fromJson(response);
  }

  void onCreateCompaniesSearchError(var err) {
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

  void _onCreateCompaniesSearchSuccess() {
    List<CompaniesItemModel> companiesItemModelList = [];
    if (postCompaniesSearchResp!.results! != null &&
        postCompaniesSearchResp!.results!.isNotEmpty) {
      for (var element in postCompaniesSearchResp!.results!) {
        var companiesItemModel = CompaniesItemModel();
        companiesItemModel.name.value = element.properties!.name!.toString();
        companiesItemModelList.add(companiesItemModel);
      }
    }
    companiesModelObj.value.companiesItemList.value = companiesItemModelList;
  }
  void _onCreateCompaniesSearchError() {
    Fluttertoast.showToast(
      msg: "",
    );
  }
}
