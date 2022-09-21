import 'package:get/get.dart';
import 'package:hbs/data/models/selectionPopupModel/selection_popup_model.dart';
import 'tasks_item_model.dart';

class TaskswidgetModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: "1",
      title: "All Types",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: "2",
      title: "Call",
    ),
    SelectionPopupModel(
      id: "3",
      title: "Emails",
    ),
    SelectionPopupModel(
      id: "4",
      title: "To-Do",
    )
  ].obs;

  RxList<SelectionPopupModel> dropdownItemList1 = [
    SelectionPopupModel(
      id: "1",
      title: "Sorted by Due Date",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: "2",
      title: "Sorted by Priority",
    )
  ].obs;

  Rx<String> taskCounterTxt = Rx('Lorem ipsum dolor sit amet');

  RxList<TasksItemModel> tasksItemList = RxList.filled(0, TasksItemModel());
}
