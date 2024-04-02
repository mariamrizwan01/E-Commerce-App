import '../../../core/app_export.dart';

/// This class is used in the [shoppingcartone_item_widget] screen.
class ShoppingcartoneItemModel {
  ShoppingcartoneItemModel({
    this.bananas,
    this.price,
    this.two,
    this.id,
  }) {
    bananas = bananas ?? "Bananas";
    price = price ?? "7.90";
    two = two ?? "2";
    id = id ?? "";
  }

  String? bananas;

  String? price;

  String? two;

  String? id;
}
