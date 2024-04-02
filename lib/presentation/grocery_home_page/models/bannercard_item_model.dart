import '../../../core/app_export.dart';

/// This class is used in the [bannercard_item_widget] screen.
class BannercardItemModel {
  BannercardItemModel({
    this.getVar,
    this.get1,
    this.offer,
    this.id,
  }) {
    getVar = getVar ?? ImageConstant.imgSettings;
    get1 = get1 ?? "Get";
    offer = offer ?? "50%  OFF";
    id = id ?? "";
  }

  String? getVar;

  String? get1;

  String? offer;

  String? id;
}
