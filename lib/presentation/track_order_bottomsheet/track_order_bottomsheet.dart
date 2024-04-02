import 'models/track_order_model.dart';
import 'package:flutter/material.dart';
import 'package:mariam_s_application2/core/app_export.dart';
import 'bloc/track_order_bloc.dart';

// ignore_for_file: must_be_immutable
class TrackOrderBottomsheet extends StatelessWidget {
  const TrackOrderBottomsheet({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<TrackOrderBloc>(
      create: (context) => TrackOrderBloc(TrackOrderState(
        trackOrderModelObj: TrackOrderModel(),
      ))
        ..add(TrackOrderInitialEvent()),
      child: TrackOrderBottomsheet(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildScrollView(context);
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.fillPrimaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder30,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 75.h,
                child: Divider(
                  color: appTheme.blueGray20001,
                ),
              ),
            ),
            SizedBox(height: 26.v),
            Row(
              children: [
                Text(
                  "lbl_order_details".tr,
                  style: CustomTextStyles.titleSmallBlack900,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 9.h),
                  child: Text(
                    "lbl_id_7654332".tr,
                    style: CustomTextStyles.bodyMediumBlack900,
                  ),
                ),
              ],
            ),
            SizedBox(height: 32.v),
          ],
        ),
      ),
    );
  }
}
