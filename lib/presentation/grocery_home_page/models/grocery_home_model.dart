// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'package:mariam_s_application2/core/app_export.dart';
import '../../../core/app_export.dart';
import 'bannercard_item_model.dart';
import 'card_item_model.dart';

/// This class defines the variables used in the [grocery_home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class GroceryHomeModel extends Equatable {
  GroceryHomeModel({
    this.dropdownItemList = const [],
    this.bannercardItemList = const [],
    this.cardItemList = const [],
  }) {}

  List<SelectionPopupModel> dropdownItemList;

  List<BannercardItemModel> bannercardItemList;

  List<CardItemModel> cardItemList;

  GroceryHomeModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<BannercardItemModel>? bannercardItemList,
    List<CardItemModel>? cardItemList,
  }) {
    return GroceryHomeModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      bannercardItemList: bannercardItemList ?? this.bannercardItemList,
      cardItemList: cardItemList ?? this.cardItemList,
    );
  }

  @override
  List<Object?> get props =>
      [dropdownItemList, bannercardItemList, cardItemList];
}
