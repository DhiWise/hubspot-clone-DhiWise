///SelectionPopupModel is common model
///used for setting data into dropdowns
class SelectionPopupModelNew {
  String? id;
  String title;
  dynamic value;
  bool isSelected;

  SelectionPopupModelNew({
    this.id,
    required this.title,
    this.value,
    this.isSelected = false,
  });
}
