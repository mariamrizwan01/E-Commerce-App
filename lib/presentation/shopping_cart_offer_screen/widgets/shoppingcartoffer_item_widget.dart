import '../models/shoppingcartoffer_item_model.dart';
import 'package:mariam_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:mariam_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class ShoppingcartofferItemWidget extends StatelessWidget {
  ShoppingcartofferItemWidget(
    this.shoppingcartofferItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ShoppingcartofferItemModel shoppingcartofferItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: 0.6,
          child: CustomImageView(
            imagePath: ImageConstant.imgImageIcon,
            height: 31.adaptSize,
            width: 31.adaptSize,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 24.v,
            ),
          ),
        ),
        Spacer(
          flex: 23,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 16.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                shoppingcartofferItemModelObj.bananas!,
                style: CustomTextStyles.titleSmallGray90001Medium,
              ),
              SizedBox(height: 1.v),
              Text(
                shoppingcartofferItemModelObj.price!,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        Spacer(
          flex: 76,
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 16.v),
          child: CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowDownGray900,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 11.h,
            top: 12.v,
            bottom: 25.v,
          ),
          child: Text(
            shoppingcartofferItemModelObj.two!,
            style: CustomTextStyles.titleSmallGray90001Medium,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 10.h,
            bottom: 16.v,
          ),
          child: CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            padding: EdgeInsets.all(8.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgPlus,
            ),
          ),
        ),
      ],
    );
  }
}
