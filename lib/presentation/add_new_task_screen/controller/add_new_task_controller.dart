import 'package:intl/intl.dart';

import '/core/app_export.dart';
import 'package:hbs/presentation/add_new_task_screen/models/add_new_task_model.dart';
import 'package:flutter/material.dart';
import 'package:hbs/data/models//get_resp.dart';
import 'package:hbs/data/apiClient/api_client.dart';

class AddNewTaskController extends GetxController {
  TextEditingController taskTitleController = TextEditingController();

  TextEditingController timeOneController = TextEditingController();

  Rx<AddNewTaskModel> addNewTaskModelObj = AddNewTaskModel().obs;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  GetResp getResp = GetResp();

  @override
  void onReady() {
    super.onReady();
    this.callFetch(
      successCall: _onFetchSuccess,
      errCall: _onFetchError,
    );

    for(int i=0;i<=getResp.results!.length;i++) {
      var name = getResp.results![i].firstName.toString() +
          getResp.results![i].lastName.toString();
      var id = getResp.results![i].id.toString();

      addNewTaskModelObj.value.dropdownItemList1.add(
        SelectionPopupModel(
            id: id,
            title: name,
            isSelected: i==0?true: false),
      );
    }


  }

  @override
  void onClose() {
    super.onClose();
    taskTitleController.dispose();
    timeOneController.dispose();
  }

  onSelected(dynamic value) {
    selectedDropDownValue = value as SelectionPopupModel;
    addNewTaskModelObj.value.dropdownItemList.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    addNewTaskModelObj.value.dropdownItemList.refresh();
  }

  onSelected1(dynamic value) {
    selectedDropDownValue1 = value as SelectionPopupModel;
    addNewTaskModelObj.value.dropdownItemList1.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    addNewTaskModelObj.value.dropdownItemList1.refresh();
  }

  onSelected2(dynamic value) {
    selectedDropDownValue2 = value as SelectionPopupModel;
    addNewTaskModelObj.value.dropdownItemList2.forEach((element) {
      element.isSelected = false;
      if (element.id == value.id) {
        element.isSelected = true;
      }
    });
    addNewTaskModelObj.value.dropdownItemList1.refresh();
  }

  void callFetch({VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().fetch(onSuccess: (resp) {
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
    getResp = GetResp.fromJson(response);

    // dropdownItemList1.a
    for(int i=0;i<=getResp.results!.length;i++) {
      var name = getResp.results![i].firstName.toString() +
          getResp.results![i].lastName.toString();
      var id = getResp.results![i].id.toString();

      addNewTaskModelObj.value.dropdownItemList1.add(
        SelectionPopupModel(
            id: id,
            title: name,
            isSelected: i==0?true: false),
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

  void _onFetchSuccess() {
    Get.find<PrefUtils>().setOwnerList(getResp.results!);
  }

  void _onFetchError() {}
  void callCreateTasks(Map req,
      {VoidCallback? successCall, VoidCallback? errCall}) async {
    return Get.find<ApiClient>().createTasks(
        headers: {
          'Content-type': 'application/json',
        },
        onSuccess: (resp) {
          onCreateTasksSuccess(resp);
          if (successCall != null) {
            successCall();
          }
        },
        onError: (err) {
          onCreateTasksError(err);
          if (errCall != null) {
            errCall();
          }
        },
        requestData: req);
  }

  void onCreateTasksSuccess(var response) {
    //postTasksResp = PostTasksResp.fromJson(response);
  }

  void onCreateTasksError(var err) {
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

  var dueDate = DateTime.now().obs;
  var dueDateAsString = DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'").format(DateTime.now()).toString();
  bool disableDate(DateTime day) {
    if ((day.isAfter(DateTime.now().subtract(Duration(days: 1))) &&
        day.isBefore(DateTime.now().add(Duration(days: 5))))) {
      return true;
    }
    return false;
  }

  chooseDate() async {
    DateTime? pickedDate = await showDatePicker(
        context: Get.context!,
        initialDate: dueDate.value,
        firstDate: DateTime(2000),
        lastDate: DateTime(2024),
        //initialEntryMode: DatePickerEntryMode.input,
        // initialDatePickerMode: DatePickerMode.year,
        helpText: 'Due Date',
        cancelText: 'Close',
        confirmText: 'Confirm',
        errorFormatText: 'Enter valid date',
        errorInvalidText: 'Enter valid date range',
        fieldLabelText: 'Due Date',
        fieldHintText: 'Date/Month/Year');
    if (pickedDate != null && pickedDate != dueDate.value) {
      dueDate.value = pickedDate;
      dueDateAsString = DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'").format(pickedDate).toString();
    }


  }

}
