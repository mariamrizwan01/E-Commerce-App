import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mariam_s_application2/presentation/orders_one_tab_container_screen/models/orders_one_tab_container_model.dart';
part 'orders_one_tab_container_event.dart';
part 'orders_one_tab_container_state.dart';

/// A bloc that manages the state of a OrdersOneTabContainer according to the event that is dispatched to it.
class OrdersOneTabContainerBloc
    extends Bloc<OrdersOneTabContainerEvent, OrdersOneTabContainerState> {
  OrdersOneTabContainerBloc(OrdersOneTabContainerState initialState)
      : super(initialState) {
    on<OrdersOneTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrdersOneTabContainerInitialEvent event,
    Emitter<OrdersOneTabContainerState> emit,
  ) async {}
}
