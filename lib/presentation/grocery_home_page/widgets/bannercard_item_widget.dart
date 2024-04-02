import '../models/bannercard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mariam_s_application2/core/app_export.dart';

class BannercardItemWidget extends StatelessWidget {
  BannercardItemWidget(
    this.bannercardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BannercardItemModel bannercardItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 21.h,
        vertical: 19.v,
      ),
      decoration: AppDecoration.fillYellow.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      width: 269.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: bannercardItemModelObj?.getVar,
            height: 56.adaptSize,
            width: 56.adaptSize,
            radius: BorderRadius.circular(
              16.h,
            ),
            margin: EdgeInsets.only(
              top: 12.v,
              bottom: 15.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 49.h,
              bottom: 5.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  bannercardItemModelObj.get1!,
                  style: CustomTextStyles.titleLargeOnPrimary,
                ),
                Text(
                  bannercardItemModelObj.offer!,
                  style: CustomTextStyles.headlineMediumOnPrimary,
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_on_first".tr,
                        style: CustomTextStyles.bodyMediumffffffff,
                      ),
                      TextSpan(
                        text: "lbl_03_order".tr,
                        style: CustomTextStyles.labelLargeffffffff,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
