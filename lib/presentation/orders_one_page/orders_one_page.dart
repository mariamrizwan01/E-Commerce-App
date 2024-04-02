import 'widgets/ordersone_item_widget.dart';
import 'models/ordersone_item_model.dart';
import 'models/orders_one_model.dart';
import 'package:flutter/material.dart';
import 'package:mariam_s_application2/core/app_export.dart';
import 'bloc/orders_one_bloc.dart';

// ignore_for_file: must_be_immutable
class OrdersOnePage extends StatefulWidget {
  const OrdersOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  OrdersOnePageState createState() => OrdersOnePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<OrdersOneBloc>(
      create: (context) => OrdersOneBloc(OrdersOneState(
        ordersOneModelObj: OrdersOneModel(),
      ))
        ..add(OrdersOneInitialEvent()),
      child: OrdersOnePage(),
    );
  }
}

class OrdersOnePageState extends State<OrdersOnePage>
    with AutomaticKeepAliveClientMixin<OrdersOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 60.v),
              _buildOrdersOne(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrdersOne(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: BlocSelector<OrdersOneBloc, OrdersOneState, OrdersOneModel?>(
        selector: (state) => state.ordersOneModelObj,
        builder: (context, ordersOneModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 14.0.v),
                child: SizedBox(
                  width: 335.h,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: appTheme.indigo50,
                  ),
                ),
              );
            },
            itemCount: ordersOneModelObj?.ordersoneItemList.length ?? 0,
            itemBuilder: (context, index) {
              OrdersoneItemModel model =
                  ordersOneModelObj?.ordersoneItemList[index] ??
                      OrdersoneItemModel();
              return OrdersoneItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
