import '../models/products_item_model.dart';
import 'package:mariam_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:mariam_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class ProductsItemWidget extends StatelessWidget {
  ProductsItemWidget(
    this.productsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductsItemModel productsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 8.v),
          CustomImageView(
            imagePath: ImageConstant.imgSettingsBlueGray200,
            height: 56.adaptSize,
            width: 56.adaptSize,
            margin: EdgeInsets.only(left: 33.h),
          ),
          SizedBox(height: 5.v),
          CustomIconButton(
            height: 24.adaptSize,
            width: 24.adaptSize,
            padding: EdgeInsets.all(6.h),
            decoration: IconButtonStyleHelper.fillPrimary,
            alignment: Alignment.centerRight,
            child: CustomImageView(
              imagePath: ImageConstant.imgPlusOutline3,
            ),
          ),
          SizedBox(height: 22.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              productsItemModelObj.price!,
              style: CustomTextStyles.titleSmallGray90001,
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Text(
              productsItemModelObj.clownTangHThree!,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
