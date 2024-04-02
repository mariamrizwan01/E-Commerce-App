// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'categoriesone_item_model.dart';

/// This class defines the variables used in the [categories_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoriesOneModel extends Equatable {
  CategoriesOneModel({this.categoriesoneItemList = const []}) {}

  List<CategoriesoneItemModel> categoriesoneItemList;

  CategoriesOneModel copyWith(
      {List<CategoriesoneItemModel>? categoriesoneItemList}) {
    return CategoriesOneModel(
      categoriesoneItemList:
          categoriesoneItemList ?? this.categoriesoneItemList,
    );
  }

  @override
  List<Object?> get props => [categoriesoneItemList];
}
