import '../../../core/app_export.dart';

/// This class is used in the [groceryhomeone_item_widget] screen.
class GroceryhomeoneItemModel {
  GroceryhomeoneItemModel({
    this.image,
    this.price,
    this.price1,
    this.id,
  }) {
    image = image ?? ImageConstant.imgSettingsBlueGray200;
    price = price ?? "325";
    price1 = price1 ?? "Orange Package 1 | 1 bundle";
    id = id ?? "";
  }

  String? image;

  String? price;

  String? price1;

  String? id;
}
