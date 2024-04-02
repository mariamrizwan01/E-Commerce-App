import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/shoppingcartone_item_model.dart';
import 'package:mariam_s_application2/presentation/shopping_cart_one_screen/models/shopping_cart_one_model.dart';
part 'shopping_cart_one_event.dart';
part 'shopping_cart_one_state.dart';

/// A bloc that manages the state of a ShoppingCartOne according to the event that is dispatched to it.
class ShoppingCartOneBloc
    extends Bloc<ShoppingCartOneEvent, ShoppingCartOneState> {
  ShoppingCartOneBloc(ShoppingCartOneState initialState) : super(initialState) {
    on<ShoppingCartOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ShoppingCartOneInitialEvent event,
    Emitter<ShoppingCartOneState> emit,
  ) async {
    emit(state.copyWith(
        shoppingCartOneModelObj: state.shoppingCartOneModelObj?.copyWith(
      shoppingcartoneItemList: fillShoppingcartoneItemList(),
    )));
  }

  List<ShoppingcartoneItemModel> fillShoppingcartoneItemList() {
    return [
      ShoppingcartoneItemModel(bananas: "Bananas", price: "7.90", two: "2"),
      ShoppingcartoneItemModel(bananas: "Package 01", price: "7.90", two: "2"),
      ShoppingcartoneItemModel(bananas: "Package 02", price: "7.90", two: "2"),
      ShoppingcartoneItemModel(bananas: "Bananas", price: "7.90", two: "2"),
      ShoppingcartoneItemModel(bananas: "Package 03", price: "7.90", two: "2")
    ];
  }
}
