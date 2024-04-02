import '../../../core/app_export.dart';

/// This class is used in the [products_item_widget] screen.
class ProductsItemModel {
  ProductsItemModel({
    this.price,
    this.clownTangHThree,
    this.id,
  }) {
    price = price ?? "325";
    clownTangHThree = clownTangHThree ?? "Clown Tang.H03";
    id = id ?? "";
  }

  String? price;

  String? clownTangHThree;

  String? id;
}
