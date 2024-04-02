import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/shoppingcartoffer_item_model.dart';
import 'package:mariam_s_application2/presentation/shopping_cart_offer_screen/models/shopping_cart_offer_model.dart';
part 'shopping_cart_offer_event.dart';
part 'shopping_cart_offer_state.dart';

/// A bloc that manages the state of a ShoppingCartOffer according to the event that is dispatched to it.
class ShoppingCartOfferBloc
    extends Bloc<ShoppingCartOfferEvent, ShoppingCartOfferState> {
  ShoppingCartOfferBloc(ShoppingCartOfferState initialState)
      : super(initialState) {
    on<ShoppingCartOfferInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ShoppingCartOfferInitialEvent event,
    Emitter<ShoppingCartOfferState> emit,
  ) async {
    emit(state.copyWith(
        shoppingCartOfferModelObj: state.shoppingCartOfferModelObj?.copyWith(
      shoppingcartofferItemList: fillShoppingcartofferItemList(),
    )));
  }

  List<ShoppingcartofferItemModel> fillShoppingcartofferItemList() {
    return [
      ShoppingcartofferItemModel(bananas: "Bananas", price: "7.90", two: "2"),
      ShoppingcartofferItemModel(
          bananas: "Package 01", price: "7.90", two: "2"),
      ShoppingcartofferItemModel(bananas: "Package 02", price: "7.90", two: "2")
    ];
  }
}
