import '../../../core/app_export.dart';

/// This class is used in the [orders_item_widget] screen.
class OrdersItemModel {
  OrdersItemModel({
    this.bananas,
    this.price,
    this.date,
    this.id,
  }) {
    bananas = bananas ?? "Bananas";
    price = price ?? "7.90";
    date = date ?? "02/10/2021";
    id = id ?? "";
  }

  String? bananas;

  String? price;

  String? date;

  String? id;
}
