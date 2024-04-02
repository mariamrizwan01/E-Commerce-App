import 'package:mariam_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:mariam_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:mariam_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:mariam_s_application2/widgets/custom_icon_button.dart';
import 'package:mariam_s_application2/widgets/custom_elevated_button.dart';
import 'widgets/orders_item_widget.dart';
import 'models/orders_item_model.dart';
import 'models/orders_model.dart';
import 'package:flutter/material.dart';
import 'package:mariam_s_application2/core/app_export.dart';
import 'bloc/orders_bloc.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OrdersBloc>(
      create: (context) => OrdersBloc(OrdersState(
        ordersModelObj: OrdersModel(),
      ))
        ..add(OrdersInitialEvent()),
      child: OrdersScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 33.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildFreshOrange(context),
              SizedBox(height: 10.v),
              _buildTrackOrder1(context),
              SizedBox(height: 5.v),
              Padding(
                padding: EdgeInsets.only(left: 22.h),
                child: Text(
                  "msg_meet_our_rider".tr,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              SizedBox(height: 26.v),
              Divider(
                color: appTheme.indigo50,
              ),
              SizedBox(height: 23.v),
              _buildOrders(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgGroup73,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 8.v,
          bottom: 8.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "lbl_orders".tr,
        margin: EdgeInsets.only(left: 21.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildFreshOrange(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: 0.6,
          child: CustomImageView(
            imagePath: ImageConstant.imgImageIconBlueGray200,
            height: 48.adaptSize,
            width: 48.adaptSize,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 17.h,
            top: 2.v,
            bottom: 5.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "lbl_fresh_orange".tr,
                style: CustomTextStyles.bodyMediumBluegray600,
              ),
              Text(
                "lbl_7_90".tr,
                style: CustomTextStyles.titleSmallBlack900,
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 10.v,
            bottom: 17.v,
          ),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_id".tr,
                  style: CustomTextStyles.bodyMediumff8791a5,
                ),
                TextSpan(
                  text: " ",
                ),
                TextSpan(
                  text: "lbl_765433".tr,
                  style: CustomTextStyles.bodyMedium33000000,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTrackOrder(BuildContext context) {
    return CustomElevatedButton(
      width: 115.h,
      text: "lbl_track_order".tr,
    );
  }

  /// Section Widget
  Widget _buildTrackOrder1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 128.v,
            width: 175.h,
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgA201,
                  height: 123.v,
                  alignment: Alignment.topCenter,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 62.h),
                  child: CustomIconButton(
                    height: 39.adaptSize,
                    width: 39.adaptSize,
                    padding: EdgeInsets.all(7.h),
                    decoration: IconButtonStyleHelper.outlineOnPrimary,
                    alignment: Alignment.bottomLeft,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgImageIconBlueGray20039x39,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 5.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 140.h,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_your_oranges".tr,
                          style: CustomTextStyles.titleLargeff1e222b,
                        ),
                        TextSpan(
                          text: "lbl_are_on_the_way".tr,
                          style: CustomTextStyles.titleLargeff1e222bBold,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 9.v),
                _buildTrackOrder(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildOrders(BuildContext context) {
    return BlocSelector<OrdersBloc, OrdersState, OrdersModel?>(
      selector: (state) => state.ordersModelObj,
      builder: (context, ordersModelObj) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 13.0.v),
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
          itemCount: ordersModelObj?.ordersItemList.length ?? 0,
          itemBuilder: (context, index) {
            OrdersItemModel model =
                ordersModelObj?.ordersItemList[index] ?? OrdersItemModel();
            return OrdersItemWidget(
              model,
            );
          },
        );
      },
    );
  }
}
