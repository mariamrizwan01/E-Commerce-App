import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/orders_item_model.dart';
import 'package:mariam_s_application2/presentation/orders_screen/models/orders_model.dart';
part 'orders_event.dart';
part 'orders_state.dart';

/// A bloc that manages the state of a Orders according to the event that is dispatched to it.
class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  OrdersBloc(OrdersState initialState) : super(initialState) {
    on<OrdersInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrdersInitialEvent event,
    Emitter<OrdersState> emit,
  ) async {
    emit(state.copyWith(
        ordersModelObj: state.ordersModelObj?.copyWith(
      ordersItemList: fillOrdersItemList(),
    )));
  }

  List<OrdersItemModel> fillOrdersItemList() {
    return [
      OrdersItemModel(bananas: "Bananas", price: "7.90", date: "02/10/2021"),
      OrdersItemModel(bananas: "Orange", price: "7.90", date: "02/10/2021"),
      OrdersItemModel(bananas: "Apple", price: "7.90", date: "02/10/2021")
    ];
  }
}
