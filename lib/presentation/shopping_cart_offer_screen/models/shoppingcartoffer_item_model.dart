import '../../../core/app_export.dart';

/// This class is used in the [shoppingcartoffer_item_widget] screen.
class ShoppingcartofferItemModel {
  ShoppingcartofferItemModel({
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
