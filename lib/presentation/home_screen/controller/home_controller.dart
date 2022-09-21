import 'package:flutter/material.dart';
import 'package:hbs/data/apiClient/api_client.dart';
import 'package:hbs/data/models/meetingAssociation/post_meeting_association_req.dart'
    as pmaReq;
import 'package:hbs/data/models/meetingAssociation/post_meeting_association_resp.dart';
import 'package:hbs/data/models/read/post_read_req.dart';
import 'package:hbs/data/models/read/post_read_resp.dart';
import 'package:hbs/data/models/searchMeet/post_search_meet_req.dart'
    as postMeetReq;
import 'package:hbs/data/models/searchMeet/post_search_meet_resp.dart'
    as postMeetResp;
import 'package:hbs/data/models/tasksSearch/post_tasks_search_req.dart';
import 'package:hbs/data/models/tasksSearch/post_tasks_search_resp.dart';
import 'package:hbs/presentation/home_screen/models/home_model.dart';
import 'package:intl/intl.dart';

import '/core/app_export.dart';
import '../models/todays_due_task_item_model.dart';
import '../models/todays_due_meet_item_model.dart';

class HomeController extends GetxController {
  Rx<HomeModel> homeModelObj = HomeModel().obs;

  PostTasksSearchResp postTasksSearchResp = PostTasksSearchResp();
  postMeetResp.PostSearchMeetResp postSearchMeetResp =
      postMeetResp.PostSearchMeetResp();
  PostReadResp postReadResp = PostReadResp();
  PostMeetingAssociationResp postMeetingAssociationResp =
      PostMeetingAssociationResp();

  @override
  void onReady() {
    super.onReady();
    PostTasksSearchReq postTasksSearchReq = PostTasksSearchReq();
    Filters startDateFilter = Filters();
    Filters endDateFilter = Filters();
    FilterGroups filterGroups = FilterGroups();

    var today = DateTime.now();
    var todayAsString = DateFormat("yyyy-MM-dd").format(today).toString();
    var startDate = DateTime.parse(todayAsString + " 00:00:00")
        .millisecondsSinceEpoch
        .toString();
    var endDate = DateTime.parse(todayAsString + " 23:59:59")
        .millisecondsSinceEpoch
        .toString();

    startDateFilter.propertyName = "hs_timestamp";
    startDateFilter.koperator = "GTE";
    startDateFilter.value = startDate;

    filterGroups.filters = [];
    filterGroups.filters?.add(startDateFilter);

    endDateFilter.propertyName = "hs_timestamp";
    endDateFilter.koperator = "LTE";
    endDateFilter.value = endDate;
    filterGroups.filters?.add(endDateFilter);

    //Manual: add filters value
    postTasksSearchReq.limit = 3;
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

    //call second API
    postMeetReq.PostSearchMeetReq postSearchMeetReq =
        postMeetReq.PostSearchMeetReq();
    postMeetReq.Filters startDateFilterMeet = postMeetReq.Filters();
    postMeetReq.Filters endDateFilterMeet = postMeetReq.Filters();
    postMeetReq.FilterGroups filterGroupsMeet = postMeetReq.FilterGroups();

    startDateFilterMeet.propertyName = "hs_timestamp";
    startDateFilterMeet.koperator = "GTE";
    startDateFilterMeet.value = startDate;

    filterGroupsMeet.filters = [];
    filterGroupsMeet.filters?.add(startDateFilterMeet);

    endDateFilterMeet.propertyName = "hs_timestamp";
    endDateFilterMeet.koperator = "LTE";
    endDateFilterMeet.value = endDate;
    filterGroupsMeet.filters?.add(endDateFilterMeet);

    postSearchMeetReq.limit = 3;
    postSearchMeetReq.after = 0;
    postSearchMeetReq.properties = [
      "hs_createdate",
      "hs_lastmodifieddate",
      "hs_meeting_body",
      "hs_meeting_end_time",
      "hs_meeting_location",
      "hs_meeting_outcome",
      "hs_meeting_start_time",
      "hs_meeting_title",
      "hs_object_id",
      "hs_timestamp"
    ];
    postSearchMeetReq.filterGroups = [];
    postSearchMeetReq.filterGroups?.add(filterGroupsMeet);
    postSearchMeetReq.sorts = ["hs_timestamp"];

    this.callCreateSearchMeet(
      postSearchMeetReq.toJson(),
      successCall: _onCreateSearchMeetSuccess,
      errCall: _onCreateSearchMeetError,
    );
  }

  @override
  void onClose() {
    super.onClose();
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

    await this
        .callCreateRead(
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

    List<TodaysDueTaskItemModel> listcheckmarkItemModelList = [];
    if (postTasksSearchResp!.results! != null &&
        postTasksSearchResp!.results!.isNotEmpty) {
      for (var element in postTasksSearchResp!.results!) {
        var listcheckmarkItemModel = TodaysDueTaskItemModel();
        listcheckmarkItemModel.callwithDavidTxt.value =
            element.properties!.hsTaskSubject!.toString();
        listcheckmarkItemModel.timeOneTxt.value =
            element.properties!.hsTimestamp!.toString();
        listcheckmarkItemModel.taskStatusImg.value =
            element.properties!.hsTaskStatus!.toString() == "COMPLETED"
                ? ImageConstant.imgCheckmark30X30
                : ImageConstant.imgCheckmark28X28;
        listcheckmarkItemModel.taskTypeImg.value =
            element.properties!.hsTaskType!.toString() == "TODO"
                ? ImageConstant.imgArrowright
                : element.properties!.hsTaskType!.toString() == "CALL"
                    ? ImageConstant.imgCall
                    : element.properties!.hsTaskType!.toString() == "MAIL"
                        ? ImageConstant.imgVectorCyan80140X40
                        : ImageConstant.imgVectorCyan80140X40;
        var contactId = associatedContacts[element.id];
        listcheckmarkItemModel.taskContact.value = contactId != null
            ? contactNames[contactId.toString()]
            : "unassociated";
        listcheckmarkItemModelList.add(listcheckmarkItemModel);
      }
    }
    homeModelObj.value.listcheckmarkItemList.value = listcheckmarkItemModelList;

    homeModelObj.value.durationTxt.value =
        postTasksSearchResp.total!.toString();
  }

  void _onCreateTasksSearchError() {}

  //Manual code
  void callCreateSearchMeet(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createSearchMeetings(
        headers: {
          'Content-type': 'application/json',
        },
        onSuccess: (resp) {
          onCreateSearchMeetSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateSearchMeetError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateSearchMeetSuccess(var response) {
    postSearchMeetResp = postMeetResp.PostSearchMeetResp.fromJson(response);
  }

  void onCreateSearchMeetError(var err) {
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

  Future<void> _onCreateSearchMeetSuccess() async {
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
    pmaReq.PostMeetingAssociationReq postMeetingAssociationReq =
        pmaReq.PostMeetingAssociationReq();
    postMeetingAssociationReq.inputs = <pmaReq.Inputs>[];
    if (postSearchMeetResp!.results != null &&
        postSearchMeetResp!.results!.isNotEmpty) {
      for (var element in postSearchMeetResp!.results!) {
        postMeetingAssociationReq.inputs
            ?.add(pmaReq.Inputs(id: element!.id!.toString()));
      }
    }

    await this
        .callMeetingAssociation(
          postMeetingAssociationReq.toJson(),
          successCall: _onMeetingAssociationSuccess,
          errCall: _onMeetingAssociationError,
        );

    var associatedContacts = {};
    if (postMeetingAssociationResp!.results != null &&
        postMeetingAssociationResp!.results!.isNotEmpty) {
      for (var element in postMeetingAssociationResp!.results!) {
        associatedContacts[element.from?.id] = element.to?[0].toObjectId;
      }
    }

    List<TodaysDueMeetItemModel> listtimeFourItemModelList = [];
    if (postSearchMeetResp!.results! != null &&
        postSearchMeetResp!.results!.isNotEmpty) {
      for (var element in postSearchMeetResp!.results!) {
        var listtimeFourItemModel = TodaysDueMeetItemModel();
        listtimeFourItemModel.meetTitle.value =
            element.properties!.hsMeetingTitle != null
                ? element.properties!.hsMeetingBody!.toString()
                : "Meeting";
        listtimeFourItemModel.meetStartTime.value =
            element.properties!.hsMeetingStartTime!.toString();
        listtimeFourItemModel.meetEndTime.value =
            element.properties!.hsMeetingEndTime!.toString();
        listtimeFourItemModel.meetTime.value =
            element.properties!.hsTimestamp!.toString();

        var contactId = associatedContacts[element.id];
        listtimeFourItemModel.meetContacts.value = contactId != null
            ? contactNames[contactId.toString()]
            : "unassociated";

        //frame304ItemModel.meetTitle.value = element.properties!.hsMeetingTitle!.toString();
        //frame304ItemModel..value = element.properties!.hsMeetingStartTime!.toString();
        //frame304ItemModel..value = element.properties!.hsMeetingTitle!.toString();
        listtimeFourItemModelList.add(listtimeFourItemModel);
      }
    }
    homeModelObj.value.listtimeFourItemList.value = listtimeFourItemModelList;
    homeModelObj.value.k8MeetingsScheTxt.value =
        postSearchMeetResp.total!.toString();
  }

  void _onCreateSearchMeetError() {}

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

  void _onCreateReadSuccess() {}

  void _onCreateReadError() {}

  Future callMeetingAssociation(
    Map req, {
    VoidCallback? successCall,
    VoidCallback? errCall,
    Map<String, dynamic> queryParams = const {},
  }) async {
    return Get.find<ApiClient>().meetingAssociation(
        headers: {
          'Content-type': 'application/json',
        },
        onSuccess: (resp) {
           onMeetingAssociationSuccess(resp);
        },
        onError: (err) {
          throw err;
        },
        requestData: req,
        queryParams: queryParams);
  }

  void onMeetingAssociationSuccess(var response) {
    postMeetingAssociationResp = PostMeetingAssociationResp.fromJson(response);
  }

  void onMeetingAssociationError(var err) {
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

  void _onMeetingAssociationSuccess() {}

  void _onMeetingAssociationError() {}
}
