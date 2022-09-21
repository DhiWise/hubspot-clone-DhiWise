import 'package:get/get.dart';
import 'package:hbs/data/models/selectionPopupModel/selection_popup_model.dart';
import 'companies_item_model.dart';

class CompaniesModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: "1",
      title: "All Companies",
      isSelected: true,
    ),
  ].obs;

  RxList<SelectionPopupModel> dropdownItemList1 = [
    SelectionPopupModel(
      id: "1",
      title: "Name",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: "2",
      title: "Create date",
    ),
  ].obs;

  RxList<CompaniesItemModel> companiesItemList =
      RxList.filled(0, CompaniesItemModel());
}
