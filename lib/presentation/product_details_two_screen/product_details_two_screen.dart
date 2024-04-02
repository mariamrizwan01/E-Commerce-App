import 'package:carousel_slider/carousel_slider.dart';
import 'widgets/fortynine_item_widget.dart';
import 'models/fortynine_item_model.dart';
import 'models/product_details_two_model.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:mariam_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:mariam_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:mariam_s_application2/widgets/CustomRatingBar.dart';
import 'package:mariam_s_application2/widgets/custom_outlined_button.dart';
import 'package:mariam_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:mariam_s_application2/core/app_export.dart';
import 'bloc/product_details_two_bloc.dart';

class ProductDetailsTwoScreen extends StatelessWidget {
  const ProductDetailsTwoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProductDetailsTwoBloc>(
      create: (context) => ProductDetailsTwoBloc(ProductDetailsTwoState(
        productDetailsTwoModelObj: ProductDetailsTwoModel(),
      ))
        ..add(ProductDetailsTwoInitialEvent()),
      child: ProductDetailsTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 45.v),
              _buildSeventyNine(context),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 5.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 154.h,
                      child: Text(
                        "msg_thin_choise_top".tr,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.titleLargeBlack900.copyWith(
                          height: 1.30,
                        ),
                      ),
                    ),
                    SizedBox(height: 8.v),
                    _buildThree(context),
                    SizedBox(height: 23.v),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          child: CustomRatingBar(
                            initialRating: 5,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            "lbl_110_reviews".tr,
                            style: CustomTextStyles.bodyMediumGray500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 30.v),
                    _buildButton(context),
                    SizedBox(height: 31.v),
                    Text(
                      "lbl_details".tr,
                      style: theme.textTheme.bodyLarge,
                    ),
                    SizedBox(height: 8.v),
                    Container(
                      width: 320.h,
                      margin: EdgeInsets.only(right: 6.h),
                      child: Text(
                        "msg_praesent_commodo".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodyLargeBluegray400.copyWith(
                          height: 1.50,
                        ),
                      ),
                    ),
                    SizedBox(height: 31.v),
                    _buildSeventyFive(
                      context,
                      reviews: "msg_nutritional_facts".tr,
                    ),
                    SizedBox(height: 16.v),
                    Divider(
                      color: appTheme.blueGray20001,
                    ),
                    SizedBox(height: 16.v),
                    _buildSeventyFive(
                      context,
                      reviews: "lbl_reviews".tr,
                    ),
                    SizedBox(height: 16.v),
                    Divider(
                      color: appTheme.gray5001,
                    ),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSeventyNine(BuildContext context) {
    return SizedBox(
      height: 251.v,
      width: 336.h,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 251.v,
              width: 336.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  BlocBuilder<ProductDetailsTwoBloc, ProductDetailsTwoState>(
                    builder: (context, state) {
                      return CarouselSlider.builder(
                        options: CarouselOptions(
                          height: 251.v,
                          initialPage: 0,
                          autoPlay: true,
                          viewportFraction: 1.0,
                          enableInfiniteScroll: false,
                          scrollDirection: Axis.horizontal,
                          onPageChanged: (
                            index,
                            reason,
                          ) {
                            state.sliderIndex = index;
                          },
                        ),
                        itemCount: state.productDetailsTwoModelObj
                                ?.fortynineItemList.length ??
                            0,
                        itemBuilder: (context, index, realIndex) {
                          FortynineItemModel model = state
                                  .productDetailsTwoModelObj
                                  ?.fortynineItemList[index] ??
                              FortynineItemModel();
                          return FortynineItemWidget(
                            model,
                          );
                        },
                      );
                    },
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: BlocBuilder<ProductDetailsTwoBloc,
                        ProductDetailsTwoState>(
                      builder: (context, state) {
                        return Container(
                          height: 1.v,
                          margin: EdgeInsets.only(bottom: 22.v),
                          child: AnimatedSmoothIndicator(
                            activeIndex: state.sliderIndex,
                            count: state.productDetailsTwoModelObj
                                    ?.fortynineItemList.length ??
                                0,
                            axisDirection: Axis.horizontal,
                            effect: ScrollingDotsEffect(
                              spacing: 8,
                              activeDotColor: appTheme.yellow800,
                              dotColor: appTheme.gray300,
                              dotHeight: 4.v,
                              dotWidth: 17.h,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomAppBar(
            height: 40.v,
            leadingWidth: 64.h,
            leading: AppbarLeadingIconbutton(
              imagePath: ImageConstant.imgGroup73,
              margin: EdgeInsets.only(left: 24.h),
            ),
            actions: [
              Container(
                height: 28.v,
                width: 28.98999.h,
                margin: EdgeInsets.fromLTRB(15.h, 3.v, 15.h, 9.v),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgBagGray90001,
                      width: 16.h,
                      alignment: Alignment.bottomLeft,
                      margin: EdgeInsets.only(
                        top: 10.v,
                        right: 12.h,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(
                          left: 4.h,
                          bottom: 4.v,
                        ),
                        decoration: AppDecoration.outlineGray.copyWith(
                          borderRadius: BorderRadiusStyle.circleBorder12,
                        ),
                        child: Text(
                          "lbl_3".tr,
                          style: theme.textTheme.titleSmall,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildThree(BuildContext context) {
    return Row(
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: "lbl_34_70".tr,
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
        Container(
          width: 84.h,
          margin: EdgeInsets.only(left: 14.h),
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 2.v,
          ),
          decoration: AppDecoration.fillPrimary.copyWith(
            borderRadius: BorderRadiusStyle.circleBorder12,
          ),
          child: Text(
            "lbl_22_04_off".tr,
            style: CustomTextStyles.bodySmallGray50,
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Text(
            "lbl_reg_56_70_usd".tr,
            style: CustomTextStyles.bodyMediumBluegray20001,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomOutlinedButton(
          width: 143.h,
          text: "lbl_add_to_cart".tr,
        ),
        CustomElevatedButton(
          width: 169.h,
          text: "lbl_buy_now".tr,
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildSeventyFive(
    BuildContext context, {
    required String reviews,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          reviews,
          style: theme.textTheme.bodyLarge!.copyWith(
            color: appTheme.gray90001,
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgArrowDown,
          height: 8.v,
          margin: EdgeInsets.only(
            top: 5.v,
            bottom: 7.v,
          ),
        ),
      ],
    );
  }
}
