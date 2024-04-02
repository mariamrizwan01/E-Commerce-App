import '../models/card_item_model.dart';
import 'package:mariam_s_application2/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:mariam_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class CardItemWidget extends StatelessWidget {
  CardItemWidget(
    this.cardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CardItemModel cardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder12,
      ),
      width: 128.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 13.v),
          CustomImageView(
            imagePath: ImageConstant.imgSettingsBlueGray200,
            height: 56.adaptSize,
            width: 56.adaptSize,
            alignment: Alignment.center,
          ),
          SizedBox(height: 30.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              cardItemModelObj.freshLemon!,
              style: CustomTextStyles.titleSmallGray90001,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              cardItemModelObj.organic!,
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 7.v),
          Container(
            decoration: AppDecoration.outlineBlack.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder12,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 4.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    cardItemModelObj.unit!,
                    style: CustomTextStyles.bodySmallBluegray400,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 3.h,
                    top: 1.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    cardItemModelObj.price!,
                    style: CustomTextStyles.titleSmallGray800,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 24.h),
                  child: CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(6.h),
                    decoration: IconButtonStyleHelper.fillPrimary,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPlusOutline3,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
