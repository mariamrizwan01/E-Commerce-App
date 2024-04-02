import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/categories_item_model.dart';
import 'package:mariam_s_application2/presentation/categories_screen/models/categories_model.dart';
part 'categories_event.dart';
part 'categories_state.dart';

/// A bloc that manages the state of a Categories according to the event that is dispatched to it.
class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc(CategoriesState initialState) : super(initialState) {
    on<CategoriesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CategoriesInitialEvent event,
    Emitter<CategoriesState> emit,
  ) async {
    emit(state.copyWith(
        categoriesModelObj: state.categoriesModelObj?.copyWith(
      categoriesItemList: fillCategoriesItemList(),
    )));
  }

  List<CategoriesItemModel> fillCategoriesItemList() {
    return [
      CategoriesItemModel(fishes: "Fishes", fromSea: "From Sea"),
      CategoriesItemModel(fishes: "Meats", fromSea: "Organic"),
      CategoriesItemModel(fishes: "Vegetables", fromSea: "Organic"),
      CategoriesItemModel(fishes: "Fruits", fromSea: "Fresh & Organic"),
      CategoriesItemModel(fishes: "Juices", fromSea: "From Sea"),
      CategoriesItemModel(fishes: "Cooking needs", fromSea: "From Sea")
    ];
  }
}
