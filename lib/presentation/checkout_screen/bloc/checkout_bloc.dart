import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/checkout_item_model.dart';
import 'package:mariam_s_application2/presentation/checkout_screen/models/checkout_model.dart';
part 'checkout_event.dart';
part 'checkout_state.dart';

/// A bloc that manages the state of a Checkout according to the event that is dispatched to it.
class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc(CheckoutState initialState) : super(initialState) {
    on<CheckoutInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<CheckoutState> emit,
  ) {
    emit(state.copyWith(
      radioGroup: event.value,
    ));
  }

  List<CheckoutItemModel> fillCheckoutItemList() {
    return [
      CheckoutItemModel(
          home: "Home",
          greenWaySunamganj: "36 green way, Sunamganj",
          edit: ImageConstant.imgCheckmark,
          edit1: "Edit"),
      CheckoutItemModel(
          home: "Office",
          greenWaySunamganj: "Medical road, Halal lab, Sunamganj")
    ];
  }

  _onInitialize(
    CheckoutInitialEvent event,
    Emitter<CheckoutState> emit,
  ) async {
    emit(state.copyWith(
      radioGroup: "",
    ));
    emit(state.copyWith(
        checkoutModelObj: state.checkoutModelObj?.copyWith(
      checkoutItemList: fillCheckoutItemList(),
    )));
  }
}
