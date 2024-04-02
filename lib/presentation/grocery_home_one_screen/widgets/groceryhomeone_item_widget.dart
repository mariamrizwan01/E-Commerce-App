import '../models/groceryhomeone_item_model.dart';
import 'package:mariam_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:mariam_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class GroceryhomeoneItemWidget extends StatelessWidget {
  GroceryhomeoneItemWidget(
    this.groceryhomeoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GroceryhomeoneItemModel groceryhomeoneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 17.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 11.v),
          CustomImageView(
            imagePath: groceryhomeoneItemModelObj?.image,
            height: 56.adaptSize,
            width: 56.adaptSize,
            margin: EdgeInsets.only(left: 35.h),
          ),
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(right: 5.h),
            child: CustomIconButton(
              height: 24.adaptSize,
              width: 24.adaptSize,
              padding: EdgeInsets.all(6.h),
              decoration: IconButtonStyleHelper.fillPrimary,
              alignment: Alignment.centerRight,
              child: CustomImageView(
                imagePath: ImageConstant.imgPlusOutline3,
              ),
            ),
          ),
          SizedBox(height: 11.v),
          Text(
            groceryhomeoneItemModelObj.price!,
            style: CustomTextStyles.titleSmallGray90001,
          ),
          SizedBox(height: 4.v),
          SizedBox(
            width: 106.h,
            child: Text(
              groceryhomeoneItemModelObj.price1!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.bodySmall!.copyWith(
                height: 1.33,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
