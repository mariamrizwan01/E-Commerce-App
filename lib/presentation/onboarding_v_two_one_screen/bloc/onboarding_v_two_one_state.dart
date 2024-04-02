// ignore_for_file: must_be_immutable

part of 'onboarding_v_two_one_bloc.dart';

/// Represents the state of OnboardingVTwoOne in the application.
class OnboardingVTwoOneState extends Equatable {
  OnboardingVTwoOneState({this.onboardingVTwoOneModelObj});

  OnboardingVTwoOneModel? onboardingVTwoOneModelObj;

  @override
  List<Object?> get props => [
        onboardingVTwoOneModelObj,
      ];

  OnboardingVTwoOneState copyWith(
      {OnboardingVTwoOneModel? onboardingVTwoOneModelObj}) {
    return OnboardingVTwoOneState(
      onboardingVTwoOneModelObj:
          onboardingVTwoOneModelObj ?? this.onboardingVTwoOneModelObj,
    );
  }
}
