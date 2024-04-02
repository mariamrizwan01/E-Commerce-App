import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/categoriesone_item_model.dart';
import 'package:mariam_s_application2/presentation/categories_one_page/models/categories_one_model.dart';
part 'categories_one_event.dart';
part 'categories_one_state.dart';

/// A bloc that manages the state of a CategoriesOne according to the event that is dispatched to it.
class CategoriesOneBloc extends Bloc<CategoriesOneEvent, CategoriesOneState> {
  CategoriesOneBloc(CategoriesOneState initialState) : super(initialState) {
    on<CategoriesOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CategoriesOneInitialEvent event,
    Emitter<CategoriesOneState> emit,
  ) async {
    emit(state.copyWith(
        categoriesOneModelObj: state.categoriesOneModelObj?.copyWith(
      categoriesoneItemList: fillCategoriesoneItemList(),
    )));
  }

  List<CategoriesoneItemModel> fillCategoriesoneItemList() {
    return [
      CategoriesoneItemModel(
          bigSmallFishes: "Big & Small Fishes",
          freshFromSea: "Fresh from sea",
          startingFrom: "Starting from"),
      CategoriesoneItemModel(
          bigSmallFishes: "Halal Meats",
          freshFromSea: "Organics & Fresh",
          startingFrom: "Starting from")
    ];
  }
}
