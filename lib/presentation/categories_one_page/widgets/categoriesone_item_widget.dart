import '../models/categoriesone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mariam_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class CategoriesoneItemWidget extends StatelessWidget {
  CategoriesoneItemWidget(
    this.categoriesoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  CategoriesoneItemModel categoriesoneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 167.v,
          width: 137.h,
          padding: EdgeInsets.symmetric(
            horizontal: 39.h,
            vertical: 55.v,
          ),
          decoration: AppDecoration.fillAmber.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder12,
          ),
          child: CustomImageView(
            imagePath: ImageConstant.imgGroup,
            height: 56.adaptSize,
            width: 56.adaptSize,
            alignment: Alignment.center,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 12.v,
            bottom: 9.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                categoriesoneItemModelObj.bigSmallFishes!,
                style: CustomTextStyles.titleMediumGray9000118,
              ),
              SizedBox(height: 7.v),
              Text(
                categoriesoneItemModelObj.freshFromSea!,
                style: CustomTextStyles.bodyLargeBluegray600,
              ),
              SizedBox(height: 39.v),
              Text(
                categoriesoneItemModelObj.startingFrom!,
                style: CustomTextStyles.bodyMediumBluegray400,
              ),
              SizedBox(height: 9.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_36".tr,
                      style: CustomTextStyles.titleMediumff2a4ba0,
                    ),
                    TextSpan(
                      text: "lbl_kg".tr,
                      style: CustomTextStyles.bodyLargeff2a4ba0,
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
