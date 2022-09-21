import 'package:hbs/data/models/read/post_read_req.dart';
import 'package:hbs/data/models/read/post_read_resp.dart';
import 'package:intl/intl.dart';

import '../models/tasks_item_model.dart';
import '/core/app_export.dart';
import 'package:hbs/presentation/taskswidget_page/models/taskswidget_model.dart';
import 'package:flutter/material.dart';
import 'package:hbs/data/models/tasksSearch/post_tasks_search_resp.dart';
import 'package:hbs/data/apiClient/api_client.dart';
import 'package:hbs/data/models/tasksSearch/post_tasks_search_req.dart';

class TaskswidgetController extends GetxController {
  TaskswidgetController(this.taskswidgetModelObj);

  Rx<TaskswidgetModel> taskswidgetModelObj;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  PostTasksSearchResp postTasksSearchResp = PostTasksSearchResp();
  PostReadResp postReadResp = PostReadResp();

  @override
  void onReady() {
    super.onReady();
    PostTasksSearchReq postTasksSearchReq = PostTasksSearchReq();

    //Manual: add filters value
    var today = DateTime.now();
    var todayAsString = DateFormat("yyyy-MM-dd").format(today).toString();
    var endDate = DateTime.parse(todayAsString + " 23:59:59").millisecondsSinceEpoch.toString();


    Filters endDateFilter = Filters();
    FilterGroups filterGroups = FilterGroups();

    filterGroups.filters = [];
    endDateFilter.propertyName = "hs_timestamp";
    endDateFilter.koperator = "LTE";
    endDateFilter.value = endDate;
    filterGroups.filters?.add(endDateFilter);

    Filters taskStatusFilters = Filters();
    taskStatusFilters.propertyName = "hs_task_status";
    taskStatusFilters.koperator = "NEQ";
    taskStatusFilters.value = "COMPLETED";
    filterGroups.filters?.add(taskStatusFilters);

    postTasksSearchReq.limit = 50;
    postTasksSearchReq.after = 0;
    postTasksSearchReq.properties = [
      "hs_task_body",
      "hs_task_priority",
      "hs_task_status",
      "hs_task_type",
      "hs_timestamp",
      "hs_task_subject"
    ];
    postTasksSearchReq.filterGroups = [];
    postTasksSearchReq.filterGroups?.add(filterGroups);
    postTasksSearchReq.sorts = ["hs_timestamp"];

    this.callCreateTasksSearch(
      postTasksSearchReq.toJson(),
      successCall: _onCreateTasksSearchSuccess,
      errCall: _onCreateTasksSearchError,
    );
  }

  @override
  void onClose() {
    super.onClose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    taskswidgetModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });

    var taskType = "";
    if (value.id == "2") {
      taskType = "CALL";
    } else if (value.id == "3") {
      taskType = "EMAIL";
    } else if (value.id == "4") {
      taskType = "TODO";
    } else {
      taskType = "";
    }

    var today = DateTime.now();
    var todayAsString = DateFormat("yyyy-MM-dd").format(today).toString();
    var endDate = DateTime.parse(todayAsString + " 23:59:59").millisecondsSinceEpoch.toString();


    Filters endDateFilter = Filters();
    FilterGroups filterGroups = FilterGroups();

    filterGroups.filters = [];
    endDateFilter.propertyName = "hs_timestamp";
    endDateFilter.koperator = "LTE";
    endDateFilter.value = endDate;
    filterGroups.filters?.add(endDateFilter);

    Filters taskStatusFilters = Filters();
    taskStatusFilters.propertyName = "hs_task_status";
    taskStatusFilters.koperator = "NEQ";
    taskStatusFilters.value = "COMPLETED";
    filterGroups.filters?.add(taskStatusFilters);


    Filters taskTpeFilters = Filters();
    if (taskType.isNotEmpty) {
      taskTpeFilters.propertyName = "hs_task_type";
      taskTpeFilters.koperator = "EQ";
      taskTpeFilters.value = taskType;
      filterGroups.filters?.add(taskTpeFilters);
    }

    var sortedBy = ["hs_timestamp"];
    if (selectedDropDownValue1?.id != null) {
      if (selectedDropDownValue1?.id == 2) {
        sortedBy = ["hs_task_priority"];
      }
    }

    //Manual: add filters value
    PostTasksSearchReq postTasksSearchReq = PostTasksSearchReq();
    postTasksSearchReq.limit = 50;
    postTasksSearchReq.after = 0;
    postTasksSearchReq.properties = [
      "hs_task_body",
      "hs_task_priority",
      "hs_task_status",
      "hs_task_type",
      "hs_timestamp",
      "hs_task_subject"
    ];
    postTasksSearchReq.filterGroups = [];
    postTasksSearchReq.filterGroups?.add(filterGroups);
    postTasksSearchReq.sorts = sortedBy;

    this.callCreateTasksSearch(
      postTasksSearchReq.toJson(),
      successCall: _onCreateTasksSearchSuccess,
      errCall: _onCreateTasksSearchError,
    );


    taskswidgetModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    selectedDropDownValue1 = value as SelectionPopupModel;
    taskswidgetModelObj.value.dropdownItemList1.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    taskswidgetModelObj.value.dropdownItemList1.refresh();
  }

  void callCreateTasksSearch(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createTasksSearch(
        headers: {
          'Content-type': 'application/json',
        },
        onSuccess: (resp) {
          onCreateTasksSearchSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateTasksSearchError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateTasksSearchSuccess(var response) {
    postTasksSearchResp = PostTasksSearchResp.fromJson(response);
  }

  void onCreateTasksSearchError(var err) {
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

  Future<void> _onCreateTasksSearchSuccess() async {

    //contact list from _sharedPreferences
    var contactList = Get.find<PrefUtils>().getContactList();
    var contactNames = {};
    for (var element in contactList!) {
      var id = element.id!.toString();
      var name = element.properties!.firstname!.toString() +
          " " +
          element.properties!.lastname!.toString();
      contactNames[id] = name;
    }

    //get associated contacts
    PostReadReq postReadReq = PostReadReq();
    postReadReq.inputs = <Inputs>[];
    if (postTasksSearchResp!.results != null &&
        postTasksSearchResp!.results!.isNotEmpty) {
      for (var element in postTasksSearchResp!.results!) {
        postReadReq.inputs?.add(Inputs(id: element!.id!.toString()));
      }
    }

    await this.callCreateRead(
      postReadReq.toJson(),
      successCall: _onCreateReadSuccess,
      errCall: _onCreateReadError,
    );

    var associatedContacts = {};
    if (postReadResp!.results != null && postReadResp!.results!.isNotEmpty) {
      for (var element in postReadResp!.results!) {
        associatedContacts[element.from?.id] = element.to?[0].toObjectId;
      }
    }

    List<TasksItemModel> tasksItemModelList = [];
    if (postTasksSearchResp.results! != null && postTasksSearchResp.results!.isNotEmpty) {
      for (var element in postTasksSearchResp.results!) {
        var tasksItemModel = TasksItemModel();
        tasksItemModel.callTxt.value =
            element.properties!.hsTaskSubject!.toString();
        tasksItemModel.timeTxt.value =
            element.properties!.hsTimestamp!.toString();
        tasksItemModel.frame250Txt.value =  element.properties!.hsTaskType!.toString();
        tasksItemModel.taskStatusImg.value =
        element.properties!.hsTaskStatus!.toString() == "COMPLETED"
            ? ImageConstant.imgCheckmark30X30
            : ImageConstant.imgCheckmark28X28;

        var contactId = associatedContacts[element.id];
        tasksItemModel.taskContact.value = contactId != null
            ? contactNames[contactId.toString()]
            : "unassociated";
        tasksItemModelList.add(tasksItemModel);
      }
    }
    taskswidgetModelObj.value.tasksItemList.value = tasksItemModelList;

    taskswidgetModelObj.value.taskCounterTxt.value =
        postTasksSearchResp.total!.toString();
  }

  void _onCreateTasksSearchError() {}

  Future callCreateRead(
      Map req, {
        VoidCallback? successCall,
        VoidCallback? errCall,
        Map<String, dynamic> queryParams = const {},
      }) async {
    return Get.find<ApiClient>().createRead(
        headers: {
          'Content-type': 'application/json',
        },
        onSuccess: (resp) {
          onCreateReadSuccess(resp);
        },
        onError: (err) {
          throw err;
        },
        requestData: req,
        queryParams: queryParams);
  }

  void onCreateReadSuccess(var response) {
    postReadResp = PostReadResp.fromJson(response);
  }

  void onCreateReadError(var err) {
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

  void _onCreateReadSuccess() {
  }

  void _onCreateReadError() {}
}
