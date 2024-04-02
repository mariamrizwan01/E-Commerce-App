import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/fortynine_item_model.dart';
import 'package:mariam_s_application2/presentation/product_details_two_screen/models/product_details_two_model.dart';
part 'product_details_two_event.dart';
part 'product_details_two_state.dart';

/// A bloc that manages the state of a ProductDetailsTwo according to the event that is dispatched to it.
class ProductDetailsTwoBloc
    extends Bloc<ProductDetailsTwoEvent, ProductDetailsTwoState> {
  ProductDetailsTwoBloc(ProductDetailsTwoState initialState)
      : super(initialState) {
    on<ProductDetailsTwoInitialEvent>(_onInitialize);
  }

  List<FortynineItemModel> fillFortynineItemList() {
    return List.generate(1, (index) => FortynineItemModel());
  }

  _onInitialize(
    ProductDetailsTwoInitialEvent event,
    Emitter<ProductDetailsTwoState> emit,
  ) async {
    emit(state.copyWith(
      sliderIndex: 0,
    ));
    emit(state.copyWith(
        productDetailsTwoModelObj: state.productDetailsTwoModelObj?.copyWith(
      fortynineItemList: fillFortynineItemList(),
    )));
  }
}
