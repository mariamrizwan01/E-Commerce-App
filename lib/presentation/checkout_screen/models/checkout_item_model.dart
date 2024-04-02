import '../../../core/app_export.dart';

/// This class is used in the [checkout_item_widget] screen.
class CheckoutItemModel {
  CheckoutItemModel({
    this.home,
    this.greenWaySunamganj,
    this.edit,
    this.edit1,
    this.id,
  }) {
    home = home ?? "Home";
    greenWaySunamganj = greenWaySunamganj ?? "36 green way, Sunamganj";
    edit = edit ?? ImageConstant.imgCheckmark;
    edit1 = edit1 ?? "Edit";
    id = id ?? "";
  }

  String? home;

  String? greenWaySunamganj;

  String? edit;

  String? edit1;

  String? id;
}
