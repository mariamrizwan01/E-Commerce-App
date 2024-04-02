// ignore_for_file: must_be_immutable

part of 'onboarding_v_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OnboardingVTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OnboardingVTwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the OnboardingVTwo widget is first created.
class OnboardingVTwoInitialEvent extends OnboardingVTwoEvent {
  @override
  List<Object?> get props => [];
}
