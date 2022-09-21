import 'package:get/get.dart';
import 'package:hbs/data/models/selectionPopupModel/selection_popup_model.dart';
import 'contacts_item_model.dart';

class ContactswidgetModel {
  RxList<SelectionPopupModel> dropdownItemList = [
    SelectionPopupModel(
      id: "1",
      title: "All Contacts",
      isSelected: true,
    ),
  ].obs;

  RxList<SelectionPopupModel> dropdownItemList1 = [
    SelectionPopupModel(
      id: "1",
      title: "First name",
      isSelected: true,
    ),
    SelectionPopupModel(
      id: "2",
      title: "Last name",
    ),
    SelectionPopupModel(
      id: "3",
      title: "Create date",
    )
  ].obs;

  RxList<ContactsItemModel> contactsItemList =
      RxList.filled(0, ContactsItemModel());
}
