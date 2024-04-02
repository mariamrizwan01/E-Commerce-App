import '../../../core/app_export.dart';

/// This class is used in the [ordersone_item_widget] screen.
class OrdersoneItemModel {
  OrdersoneItemModel({
    this.freshOrange,
    this.price,
    this.id,
  }) {
    freshOrange = freshOrange ?? "Fresh Orange";
    price = price ?? "7.90";
    id = id ?? "";
  }

  String? freshOrange;

  String? price;

  String? id;
}
