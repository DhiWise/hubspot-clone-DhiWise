import 'package:get/get.dart';
import 'package:hbs/data/models/selectionPopupModel/selection_popup_model.dart';

class AddNewTaskModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(id: "1", title: "To-Do", isSelected: true),
    SelectionPopupModel(id: "2", title: "Call"),
    SelectionPopupModel(id: "3", title: "Email")
  ].obs;

  RxList<SelectionPopupModel> dropdownItemList1 = RxList();

  RxList<SelectionPopupModel> dropdownItemList2 = [
    SelectionPopupModel(id: "1", title: "Low", isSelected: true),
    SelectionPopupModel(id: "2", title: "Med"),
    SelectionPopupModel(id: "3", title: "High")
  ].obs;
}
