// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'groceryhomeone_item_model.dart';

/// This class defines the variables used in the [grocery_home_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class GroceryHomeOneModel extends Equatable {
  GroceryHomeOneModel({this.groceryhomeoneItemList = const []}) {}

  List<GroceryhomeoneItemModel> groceryhomeoneItemList;

  GroceryHomeOneModel copyWith(
      {List<GroceryhomeoneItemModel>? groceryhomeoneItemList}) {
    return GroceryHomeOneModel(
      groceryhomeoneItemList:
          groceryhomeoneItemList ?? this.groceryhomeoneItemList,
    );
  }

  @override
  List<Object?> get props => [groceryhomeoneItemList];
}
