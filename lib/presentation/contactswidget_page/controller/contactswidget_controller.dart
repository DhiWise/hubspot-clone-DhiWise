import '../models/contacts_item_model.dart';
import '/core/app_export.dart';
import 'package:hbs/presentation/contactswidget_page/models/contactswidget_model.dart';
import 'package:flutter/material.dart';
import 'package:hbs/data/models/contactsSearch/post_contacts_search_resp.dart';
import 'package:hbs/data/apiClient/api_client.dart';
import 'package:hbs/data/models/contactsSearch/post_contacts_search_req.dart';

class ContactswidgetController extends GetxController {
  ContactswidgetController(this.contactswidgetModelObj);

  Rx<ContactswidgetModel> contactswidgetModelObj;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

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

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    contactswidgetModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    contactswidgetModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    selectedDropDownValue1 = value as SelectionPopupModel;
    contactswidgetModelObj.value.dropdownItemList1.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });

    var sortedBy = ["firstname"];
    if (value.id == "2") {
      sortedBy = ["lastname"];
    }else if(value.id == "3"){
      sortedBy = ["createdate"];
    }

    PostContactsSearchReq postContactsSearchReq = PostContactsSearchReq();
    postContactsSearchReq.limit = 10;
    postContactsSearchReq.after = 0;
    postContactsSearchReq.properties = ["firstname","lastname","company","createdate","email","phone"];
    postContactsSearchReq.sorts = sortedBy;

    this.callCreateContactsSearch(
      postContactsSearchReq.toJson(),
      successCall: _onCreateContactsSearchSuccess,
      errCall: _onCreateContactsSearchError,
    );
    contactswidgetModelObj.value.dropdownItemList1.refresh();
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
    List<ContactsItemModel> contactsItemModelList = [];
    if (postContactsSearchResp!.results! != null &&
        postContactsSearchResp!.results!.isNotEmpty) {
      for (var element in postContactsSearchResp!.results!) {
        var contactsItemModel = ContactsItemModel();
        contactsItemModel.firstName.value = element.properties!.firstname!.toString();
        contactsItemModel.lastName.value = element.properties!.lastname != null ? element.properties!.lastname!.toString() : "";
        contactsItemModelList.add(contactsItemModel);
      }
    }
    contactswidgetModelObj.value.contactsItemList.value = contactsItemModelList;
  }
  void _onCreateContactsSearchError() {
    Get.defaultDialog(
        onConfirm: () => Get.back(),
        title: "Error",
        middleText: "msg_something_went_wrong".tr);
  }
}
