import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/bannercard_item_model.dart';
import '../models/card_item_model.dart';
import 'package:mariam_s_application2/presentation/grocery_home_page/models/grocery_home_model.dart';
part 'grocery_home_event.dart';
part 'grocery_home_state.dart';

/// A bloc that manages the state of a GroceryHome according to the event that is dispatched to it.
class GroceryHomeBloc extends Bloc<GroceryHomeEvent, GroceryHomeState> {
  GroceryHomeBloc(GroceryHomeState initialState) : super(initialState) {
    on<GroceryHomeInitialEvent>(_onInitialize);
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<BannercardItemModel> fillBannercardItemList() {
    return [
      BannercardItemModel(
          getVar: ImageConstant.imgSettings, get1: "Get", offer: "50%  OFF")
    ];
  }

  List<CardItemModel> fillCardItemList() {
    return [
      CardItemModel(
          freshLemon: "Fresh Lemon",
          organic: "Organic ",
          unit: "Unit",
          price: "12"),
      CardItemModel(
          freshLemon: "Green Tea",
          organic: "Organic ",
          unit: "Unit",
          price: "06"),
      CardItemModel(freshLemon: "Fresh Lemon", organic: "Organic ")
    ];
  }

  _onInitialize(
    GroceryHomeInitialEvent event,
    Emitter<GroceryHomeState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        groceryHomeModelObj: state.groceryHomeModelObj?.copyWith(
      dropdownItemList: fillDropdownItemList(),
      bannercardItemList: fillBannercardItemList(),
      cardItemList: fillCardItemList(),
    )));
  }
}
