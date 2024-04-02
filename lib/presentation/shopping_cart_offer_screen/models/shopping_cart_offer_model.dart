// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'shoppingcartoffer_item_model.dart';

/// This class defines the variables used in the [shopping_cart_offer_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ShoppingCartOfferModel extends Equatable {
  ShoppingCartOfferModel({this.shoppingcartofferItemList = const []}) {}

  List<ShoppingcartofferItemModel> shoppingcartofferItemList;

  ShoppingCartOfferModel copyWith(
      {List<ShoppingcartofferItemModel>? shoppingcartofferItemList}) {
    return ShoppingCartOfferModel(
      shoppingcartofferItemList:
          shoppingcartofferItemList ?? this.shoppingcartofferItemList,
    );
  }

  @override
  List<Object?> get props => [shoppingcartofferItemList];
}
