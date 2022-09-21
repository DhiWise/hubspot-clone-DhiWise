import 'package:get/get.dart';
import 'package:hbs/data/models/selectionPopupModel/selection_popup_model.dart';
import 'deallist_item_model.dart';

class DeallistModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: "1",
      title: "All Deals",
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
    SelectionPopupModel(
      id: "3",
      title: "Deal stage",
    )
  ].obs;

  RxList<DeallistItemModel> deallistItemList =
      RxList.filled(0, DeallistItemModel());
}
