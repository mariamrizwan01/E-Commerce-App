import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:mariam_s_application2/widgets/custom_elevated_button.dart';
import 'models/onboarding_v_two_model.dart';
import 'package:flutter/material.dart';
import 'package:mariam_s_application2/core/app_export.dart';
import 'bloc/onboarding_v_two_bloc.dart';

class OnboardingVTwoScreen extends StatelessWidget {
  const OnboardingVTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingVTwoBloc>(
      create: (context) => OnboardingVTwoBloc(OnboardingVTwoState(
        onboardingVTwoModelObj: OnboardingVTwoModel(),
      ))
        ..add(OnboardingVTwoInitialEvent()),
      child: OnboardingVTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingVTwoBloc, OnboardingVTwoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 42.h,
                vertical: 58.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 152.v,
                    width: 281.h,
                    child: Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 281.h,
                            child: Text(
                              "msg_your_holiday_sh".tr,
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.headlineLarge!.copyWith(
                                height: 1.27,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgEmoji,
                          height: 33.adaptSize,
                          width: 33.adaptSize,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(
                            left: 93.h,
                            bottom: 4.v,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 24.v),
                  Container(
                    width: 265.h,
                    margin: EdgeInsets.only(right: 25.h),
                    child: Text(
                      "msg_there_s_something".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMediumBluegray20001.copyWith(
                        height: 1.22,
                      ),
                    ),
                  ),
                  SizedBox(height: 41.v),
                  SizedBox(
                    height: 6.v,
                    child: AnimatedSmoothIndicator(
                      activeIndex: 0,
                      count: 2,
                      effect: ScrollingDotsEffect(
                        activeDotColor: Color(0X1212121D),
                        dotHeight: 6.v,
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(height: 70.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgGroupOnprimary,
                    height: 107.adaptSize,
                    width: 107.adaptSize,
                    alignment: Alignment.center,
                  )
                ],
              ),
            ),
            bottomNavigationBar: _buildGetStarted(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildGetStarted(BuildContext context) {
    return CustomElevatedButton(
      height: 70.v,
      width: 253.h,
      text: "lbl_get_started".tr,
      margin: EdgeInsets.only(
        left: 61.h,
        right: 61.h,
        bottom: 32.v,
      ),
      buttonStyle: CustomButtonStyles.fillGray,
      buttonTextStyle: CustomTextStyles.titleMediumGray90001,
    );
  }
}
