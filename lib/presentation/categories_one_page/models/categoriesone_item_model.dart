import '../../../core/app_export.dart';

/// This class is used in the [categoriesone_item_widget] screen.
class CategoriesoneItemModel {
  CategoriesoneItemModel({
    this.bigSmallFishes,
    this.freshFromSea,
    this.startingFrom,
    this.id,
  }) {
    bigSmallFishes = bigSmallFishes ?? "Big & Small Fishes";
    freshFromSea = freshFromSea ?? "Fresh from sea";
    startingFrom = startingFrom ?? "Starting from";
    id = id ?? "";
  }

  String? bigSmallFishes;

  String? freshFromSea;

  String? startingFrom;

  String? id;
}
