///SelectionPopupModel is common model
///used for setting data into dropdowns
class SelectionPopupModel {
  String? id;
  String title;
  dynamic value;
  bool isSelected;

  SelectionPopupModel({
    this.id,
    required this.title,
    this.value,
    this.isSelected = false,
  });
}
