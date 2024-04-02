import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mariam_s_application2/presentation/onboarding_v_two_screen/models/onboarding_v_two_model.dart';
part 'onboarding_v_two_event.dart';
part 'onboarding_v_two_state.dart';

/// A bloc that manages the state of a OnboardingVTwo according to the event that is dispatched to it.
class OnboardingVTwoBloc
    extends Bloc<OnboardingVTwoEvent, OnboardingVTwoState> {
  OnboardingVTwoBloc(OnboardingVTwoState initialState) : super(initialState) {
    on<OnboardingVTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingVTwoInitialEvent event,
    Emitter<OnboardingVTwoState> emit,
  ) async {
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.groceryHomeContainerScreen,
      );
    });
  }
}
