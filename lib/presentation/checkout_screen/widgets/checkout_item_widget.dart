import '../models/checkout_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mariam_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class CheckoutItemWidget extends StatelessWidget {
  CheckoutItemWidget(
    this.checkoutItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CheckoutItemModel checkoutItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineYellow.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder12,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  checkoutItemModelObj.home!,
                  style: theme.textTheme.bodyMedium,
                ),
                SizedBox(height: 19.v),
                Text(
                  checkoutItemModelObj.greenWaySunamganj!,
                  style: CustomTextStyles.titleSmallBlack900,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 2.v),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: checkoutItemModelObj?.edit,
                  height: 22.adaptSize,
                  width: 22.adaptSize,
                ),
                SizedBox(height: 18.v),
                Text(
                  checkoutItemModelObj.edit1!,
                  style: CustomTextStyles.labelLargePrimary,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
