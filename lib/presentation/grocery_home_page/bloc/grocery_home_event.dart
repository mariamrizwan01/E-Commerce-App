// ignore_for_file: must_be_immutable

part of 'grocery_home_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GroceryHome widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class GroceryHomeEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the GroceryHome widget is first created.
class GroceryHomeInitialEvent extends GroceryHomeEvent {
  @override
  List<Object?> get props => [];
}
