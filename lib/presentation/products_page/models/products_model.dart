// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'products_item_model.dart';

/// This class defines the variables used in the [products_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductsModel extends Equatable {
  ProductsModel({this.productsItemList = const []}) {}

  List<ProductsItemModel> productsItemList;

  ProductsModel copyWith({List<ProductsItemModel>? productsItemList}) {
    return ProductsModel(
      productsItemList: productsItemList ?? this.productsItemList,
    );
  }

  @override
  List<Object?> get props => [productsItemList];
}
