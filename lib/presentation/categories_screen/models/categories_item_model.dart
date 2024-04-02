import '../../../core/app_export.dart';

/// This class is used in the [categories_item_widget] screen.
class CategoriesItemModel {
  CategoriesItemModel({
    this.fishes,
    this.fromSea,
    this.id,
  }) {
    fishes = fishes ?? "Fishes";
    fromSea = fromSea ?? "From Sea";
    id = id ?? "";
  }

  String? fishes;

  String? fromSea;

  String? id;
}
