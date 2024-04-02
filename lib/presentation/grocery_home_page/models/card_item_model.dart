import '../../../core/app_export.dart';

/// This class is used in the [card_item_widget] screen.
class CardItemModel {
  CardItemModel({
    this.freshLemon,
    this.organic,
    this.unit,
    this.price,
    this.id,
  }) {
    freshLemon = freshLemon ?? "Fresh Lemon";
    organic = organic ?? "Organic ";
    unit = unit ?? "Unit";
    price = price ?? "12";
    id = id ?? "";
  }

  String? freshLemon;

  String? organic;

  String? unit;

  String? price;

  String? id;
}
