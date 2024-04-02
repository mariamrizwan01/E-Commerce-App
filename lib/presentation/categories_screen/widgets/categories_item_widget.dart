import '../models/categories_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mariam_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class CategoriesItemWidget extends StatelessWidget {
  CategoriesItemWidget(
    this.categoriesItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CategoriesItemModel categoriesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 28.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 6.v),
          CustomImageView(
            imagePath: ImageConstant.imgSettingsBlueGray200,
            height: 56.adaptSize,
            width: 56.adaptSize,
          ),
          SizedBox(height: 19.v),
          SizedBox(
            width: 98.h,
            child: Divider(),
          ),
          SizedBox(height: 6.v),
          Text(
            categoriesItemModelObj.fishes!,
            style: CustomTextStyles.labelLargeGray90001,
          ),
          Text(
            categoriesItemModelObj.fromSea!,
            style: theme.textTheme.bodySmall,
          ),
        ],
      ),
    );
  }
}
