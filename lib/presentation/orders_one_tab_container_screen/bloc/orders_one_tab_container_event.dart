// ignore_for_file: must_be_immutable

part of 'orders_one_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OrdersOneTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OrdersOneTabContainerEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the OrdersOneTabContainer widget is first created.
class OrdersOneTabContainerInitialEvent extends OrdersOneTabContainerEvent {
  @override
  List<Object?> get props => [];
}
