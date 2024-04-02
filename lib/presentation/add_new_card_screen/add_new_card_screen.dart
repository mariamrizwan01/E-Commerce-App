import 'package:mariam_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:mariam_s_application2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:mariam_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:mariam_s_application2/widgets/custom_text_form_field.dart';
import 'package:mariam_s_application2/widgets/custom_elevated_button.dart';
import 'models/add_new_card_model.dart';
import 'package:flutter/material.dart';
import 'package:mariam_s_application2/core/app_export.dart';
import 'bloc/add_new_card_bloc.dart';

class AddNewCardScreen extends StatelessWidget {
  const AddNewCardScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AddNewCardBloc>(
      create: (context) => AddNewCardBloc(AddNewCardState(
        addNewCardModelObj: AddNewCardModel(),
      ))
        ..add(AddNewCardInitialEvent()),
      child: AddNewCardScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 55.v),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8.h),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text(
                        "msg_card_holder_name".tr.toUpperCase(),
                        style: CustomTextStyles.labelLargeSemiBold,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  _buildName(context),
                  SizedBox(height: 30.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 12.h),
                      child: Text(
                        "lbl_card_number".tr.toUpperCase(),
                        style: CustomTextStyles.labelLargeSemiBold,
                      ),
                    ),
                  ),
                  SizedBox(height: 9.v),
                  _buildCardNumber(context),
                  SizedBox(height: 30.v),
                  _buildFiftyFive(context),
                  SizedBox(height: 190.v),
                  _buildOne(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 64.h,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgGroup73,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 8.v,
          bottom: 8.v,
        ),
      ),
      title: AppbarSubtitle(
        text: "lbl_add_card".tr,
        margin: EdgeInsets.only(left: 21.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child:
          BlocSelector<AddNewCardBloc, AddNewCardState, TextEditingController?>(
        selector: (state) => state.nameController,
        builder: (context, nameController) {
          return CustomTextFormField(
            controller: nameController,
            hintText: "lbl_john_smith".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildCardNumber(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child:
          BlocSelector<AddNewCardBloc, AddNewCardState, TextEditingController?>(
        selector: (state) => state.cardNumberController,
        builder: (context, cardNumberController) {
          return CustomTextFormField(
            controller: cardNumberController,
            hintText: "msg_0987_0986_5543_09809".tr,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildDate(BuildContext context) {
    return BlocSelector<AddNewCardBloc, AddNewCardState,
        TextEditingController?>(
      selector: (state) => state.dateController,
      builder: (context, dateController) {
        return CustomTextFormField(
          width: 150.h,
          controller: dateController,
          hintText: "lbl_10_23".tr,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildNinetySix(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 17.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "lbl_cvc".tr.toUpperCase(),
              style: CustomTextStyles.labelLargeSemiBold,
            ),
            SizedBox(height: 9.v),
            BlocSelector<AddNewCardBloc, AddNewCardState,
                TextEditingController?>(
              selector: (state) => state.zipcodeController,
              builder: (context, zipcodeController) {
                return CustomTextFormField(
                  width: 150.h,
                  controller: zipcodeController,
                  hintText: "lbl_3465".tr,
                  textInputAction: TextInputAction.done,
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyFive(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: 17.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_exp_date".tr.toUpperCase(),
                    style: CustomTextStyles.labelLargeSemiBold,
                  ),
                  SizedBox(height: 9.v),
                  _buildDate(context),
                ],
              ),
            ),
          ),
          _buildNinetySix(context),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMakePayment(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_make_payment".tr,
    );
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.fillPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: _buildFiftyTwo(
              context,
              delivery: "lbl_subtotal".tr,
              price: "lbl_35_96".tr,
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: _buildFiftyTwo(
              context,
              delivery: "lbl_delivery".tr,
              price: "lbl_2_00".tr,
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: _buildFiftyTwo(
              context,
              delivery: "lbl_total".tr,
              price: "lbl_37_96".tr,
            ),
          ),
          SizedBox(height: 37.v),
          _buildMakePayment(context),
          SizedBox(height: 49.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFiftyTwo(
    BuildContext context, {
    required String delivery,
    required String price,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          delivery,
          style: CustomTextStyles.bodyMediumBluegray600.copyWith(
            color: appTheme.blueGray600,
          ),
        ),
        Text(
          price,
          style: CustomTextStyles.titleSmallGray90001Medium.copyWith(
            color: appTheme.gray90001,
          ),
        ),
      ],
    );
  }
}
