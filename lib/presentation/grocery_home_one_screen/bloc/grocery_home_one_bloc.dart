import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/groceryhomeone_item_model.dart';
import 'package:mariam_s_application2/presentation/grocery_home_one_screen/models/grocery_home_one_model.dart';
part 'grocery_home_one_event.dart';
part 'grocery_home_one_state.dart';

/// A bloc that manages the state of a GroceryHomeOne according to the event that is dispatched to it.
class GroceryHomeOneBloc
    extends Bloc<GroceryHomeOneEvent, GroceryHomeOneState> {
  GroceryHomeOneBloc(GroceryHomeOneState initialState) : super(initialState) {
    on<GroceryHomeOneInitialEvent>(_onInitialize);
  }

  List<GroceryhomeoneItemModel> fillGroceryhomeoneItemList() {
    return [
      GroceryhomeoneItemModel(
          image: ImageConstant.imgSettingsBlueGray200,
          price: "325",
          price1: "Orange Package 1 | 1 bundle"),
      GroceryhomeoneItemModel(
          image: ImageConstant.imgSettingsBlueGray200,
          price: "89",
          price1: "Green Tea Package 2 | 1 bundle")
    ];
  }

  _onInitialize(
    GroceryHomeOneInitialEvent event,
    Emitter<GroceryHomeOneState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));
    emit(state.copyWith(
        groceryHomeOneModelObj: state.groceryHomeOneModelObj?.copyWith(
      groceryhomeoneItemList: fillGroceryhomeoneItemList(),
    )));
  }
}
