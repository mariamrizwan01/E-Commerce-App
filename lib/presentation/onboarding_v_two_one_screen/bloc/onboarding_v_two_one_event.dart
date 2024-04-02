// ignore_for_file: must_be_immutable

part of 'onboarding_v_two_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnboardingVTwoOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnboardingVTwoOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the OnboardingVTwoOne widget is first created.
class OnboardingVTwoOneInitialEvent extends OnboardingVTwoOneEvent {
  @override
  List<Object?> get props => [];
}
