import '../models/fortynine_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mariam_s_application2/core/app_export.dart';

// ignore: must_be_immutable
class FortynineItemWidget extends StatelessWidget {
  FortynineItemWidget(
    this.fortynineItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  FortynineItemModel fortynineItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 251.v,
        width: 336.h,
        padding: EdgeInsets.symmetric(horizontal: 43.h),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                height: 241.adaptSize,
                width: 241.adaptSize,
                decoration: BoxDecoration(
                  color: theme.colorScheme.primaryContainer.withOpacity(1),
                  borderRadius: BorderRadius.circular(
                    120.h,
                  ),
                ),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgGroupBlueGray200,
              height: 56.adaptSize,
              width: 56.adaptSize,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 91.h),
            ),
          ],
        ),
      ),
    );
  }
}
