// ignore_for_file: must_be_immutable

part of 'orders_one_tab_container_bloc.dart';

/// Represents the state of OrdersOneTabContainer in the application.
class OrdersOneTabContainerState extends Equatable {
  OrdersOneTabContainerState({this.ordersOneTabContainerModelObj});

  OrdersOneTabContainerModel? ordersOneTabContainerModelObj;

  @override
  List<Object?> get props => [
        ordersOneTabContainerModelObj,
      ];

  OrdersOneTabContainerState copyWith(
      {OrdersOneTabContainerModel? ordersOneTabContainerModelObj}) {
    return OrdersOneTabContainerState(
      ordersOneTabContainerModelObj:
          ordersOneTabContainerModelObj ?? this.ordersOneTabContainerModelObj,
    );
  }
}
