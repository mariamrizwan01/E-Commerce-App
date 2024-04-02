import '../models/shoppingcartone_item_model.dart';
import 'package:mariam_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:mariam_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class ShoppingcartoneItemWidget extends StatelessWidget {
  ShoppingcartoneItemWidget(
    this.shoppingcartoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ShoppingcartoneItemModel shoppingcartoneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Opacity(
          opacity: 0.6,
          child: CustomImageView(
            imagePath: ImageConstant.imgImageIcon,
            height: 30.adaptSize,
            width: 30.adaptSize,
            margin: EdgeInsets.only(
              left: 6.h,
              top: 3.v,
              bottom: 24.v,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 26.h,
            bottom: 16.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                shoppingcartoneItemModelObj.bananas!,
                style: CustomTextStyles.titleSmallGray90001Medium,
              ),
              SizedBox(height: 1.v),
              Text(
                shoppingcartoneItemModelObj.price!,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        Spacer(),
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
            shoppingcartoneItemModelObj.two!,
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
