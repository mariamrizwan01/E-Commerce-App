// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'ordersone_item_model.dart';

/// This class defines the variables used in the [orders_one_page],
/// and is typically used to hold data that is passed between different parts of the application.
class OrdersOneModel extends Equatable {
  OrdersOneModel({this.ordersoneItemList = const []}) {}

  List<OrdersoneItemModel> ordersoneItemList;

  OrdersOneModel copyWith({List<OrdersoneItemModel>? ordersoneItemList}) {
    return OrdersOneModel(
      ordersoneItemList: ordersoneItemList ?? this.ordersoneItemList,
    );
  }

  @override
  List<Object?> get props => [ordersoneItemList];
}
