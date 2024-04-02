import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/products_item_model.dart';
import 'package:mariam_s_application2/presentation/products_page/models/products_model.dart';
part 'products_event.dart';
part 'products_state.dart';

/// A bloc that manages the state of a Products according to the event that is dispatched to it.
class ProductsBloc extends Bloc<ProductsEvent, ProductsState> {
  ProductsBloc(ProductsState initialState) : super(initialState) {
    on<ProductsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProductsInitialEvent event,
    Emitter<ProductsState> emit,
  ) async {
    emit(state.copyWith(
        productsModelObj: state.productsModelObj?.copyWith(
      productsItemList: fillProductsItemList(),
    )));
  }

  List<ProductsItemModel> fillProductsItemList() {
    return [
      ProductsItemModel(price: "325", clownTangHThree: "Clown Tang.H03"),
      ProductsItemModel(price: "89", clownTangHThree: "Clownfish.H03"),
      ProductsItemModel(price: "89", clownTangHThree: "Gold Fish.H03"),
      ProductsItemModel(price: "325", clownTangHThree: "Fish.H03"),
      ProductsItemModel(price: "89", clownTangHThree: "Clownfish.H03"),
      ProductsItemModel(price: "325", clownTangHThree: "Clown Tang.H03")
    ];
  }
}
