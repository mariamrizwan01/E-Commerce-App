// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'categories_item_model.dart';

/// This class defines the variables used in the [categories_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CategoriesModel extends Equatable {
  CategoriesModel({this.categoriesItemList = const []}) {}

  List<CategoriesItemModel> categoriesItemList;

  CategoriesModel copyWith({List<CategoriesItemModel>? categoriesItemList}) {
    return CategoriesModel(
      categoriesItemList: categoriesItemList ?? this.categoriesItemList,
    );
  }

  @override
  List<Object?> get props => [categoriesItemList];
}
