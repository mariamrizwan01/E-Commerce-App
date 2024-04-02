import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mariam_s_application2/presentation/product_details_screen/models/product_details_model.dart';
part 'product_details_event.dart';
part 'product_details_state.dart';

/// A bloc that manages the state of a ProductDetails according to the event that is dispatched to it.
class ProductDetailsBloc
    extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  ProductDetailsBloc(ProductDetailsState initialState) : super(initialState) {
    on<ProductDetailsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ProductDetailsInitialEvent event,
    Emitter<ProductDetailsState> emit,
  ) async {}
}
