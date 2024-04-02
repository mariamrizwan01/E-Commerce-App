import '../models/orders_item_model.dart';
import 'package:mariam_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:mariam_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class OrdersItemWidget extends StatelessWidget {
  OrdersItemWidget(
    this.ordersItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  OrdersItemModel ordersItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: 0.6,
          child: CustomImageView(
            imagePath: ImageConstant.imgImageIconBlueGray200,
            height: 48.adaptSize,
            width: 48.adaptSize,
            margin: EdgeInsets.only(bottom: 38.v),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 17.h,
            top: 2.v,
            bottom: 3.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ordersItemModelObj.bananas!,
                style: CustomTextStyles.bodyMediumBluegray600,
              ),
              SizedBox(height: 1.v),
              Text(
                ordersItemModelObj.price!,
                style: CustomTextStyles.titleSmallBlack900,
              ),
              SizedBox(height: 19.v),
              Text(
                ordersItemModelObj.date!,
                style: CustomTextStyles.bodyMediumBluegray400,
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(top: 11.v),
          child: Column(
            children: [
              RichText(
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
              SizedBox(height: 28.v),
              _buildSuccess(context),
            ],
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildSuccess(BuildContext context) {
    return CustomElevatedButton(
      height: 26.v,
      width: 74.h,
      text: "lbl_success".tr,
      buttonStyle: CustomButtonStyles.fillPrimaryTL6,
      buttonTextStyle: CustomTextStyles.labelLargePrimary,
      alignment: Alignment.centerRight,
    );
  }
}
