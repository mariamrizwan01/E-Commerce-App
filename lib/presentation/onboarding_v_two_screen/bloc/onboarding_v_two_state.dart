// ignore_for_file: must_be_immutable

part of 'onboarding_v_two_bloc.dart';

/// Represents the state of OnboardingVTwo in the application.
class OnboardingVTwoState extends Equatable {
  OnboardingVTwoState({this.onboardingVTwoModelObj});

  OnboardingVTwoModel? onboardingVTwoModelObj;

  @override
  List<Object?> get props => [
        onboardingVTwoModelObj,
      ];

  OnboardingVTwoState copyWith({OnboardingVTwoModel? onboardingVTwoModelObj}) {
    return OnboardingVTwoState(
      onboardingVTwoModelObj:
          onboardingVTwoModelObj ?? this.onboardingVTwoModelObj,
    );
  }
}
