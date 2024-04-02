import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/ordersone_item_model.dart';
import 'package:mariam_s_application2/presentation/orders_one_page/models/orders_one_model.dart';
part 'orders_one_event.dart';
part 'orders_one_state.dart';

/// A bloc that manages the state of a OrdersOne according to the event that is dispatched to it.
class OrdersOneBloc extends Bloc<OrdersOneEvent, OrdersOneState> {
  OrdersOneBloc(OrdersOneState initialState) : super(initialState) {
    on<OrdersOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrdersOneInitialEvent event,
    Emitter<OrdersOneState> emit,
  ) async {
    emit(state.copyWith(
        ordersOneModelObj: state.ordersOneModelObj?.copyWith(
      ordersoneItemList: fillOrdersoneItemList(),
    )));
  }

  List<OrdersoneItemModel> fillOrdersoneItemList() {
    return [
      OrdersoneItemModel(freshOrange: "Fresh Orange", price: "7.90"),
      OrdersoneItemModel(freshOrange: "Big Fishes", price: "120")
    ];
  }
}
