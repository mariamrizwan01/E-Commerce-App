import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:mariam_s_application2/presentation/onboarding_v_two_one_screen/models/onboarding_v_two_one_model.dart';
part 'onboarding_v_two_one_event.dart';
part 'onboarding_v_two_one_state.dart';

/// A bloc that manages the state of a OnboardingVTwoOne according to the event that is dispatched to it.
class OnboardingVTwoOneBloc
    extends Bloc<OnboardingVTwoOneEvent, OnboardingVTwoOneState> {
  OnboardingVTwoOneBloc(OnboardingVTwoOneState initialState)
      : super(initialState) {
    on<OnboardingVTwoOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingVTwoOneInitialEvent event,
    Emitter<OnboardingVTwoOneState> emit,
  ) async {}
}
