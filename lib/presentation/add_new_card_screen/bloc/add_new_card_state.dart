// ignore_for_file: must_be_immutable

part of 'add_new_card_bloc.dart';

/// Represents the state of AddNewCard in the application.
class AddNewCardState extends Equatable {
  AddNewCardState({
    this.nameController,
    this.cardNumberController,
    this.dateController,
    this.zipcodeController,
    this.addNewCardModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? cardNumberController;

  TextEditingController? dateController;

  TextEditingController? zipcodeController;

  AddNewCardModel? addNewCardModelObj;

  @override
  List<Object?> get props => [
        nameController,
        cardNumberController,
        dateController,
        zipcodeController,
        addNewCardModelObj,
      ];

  AddNewCardState copyWith({
    TextEditingController? nameController,
    TextEditingController? cardNumberController,
    TextEditingController? dateController,
    TextEditingController? zipcodeController,
    AddNewCardModel? addNewCardModelObj,
  }) {
    return AddNewCardState(
      nameController: nameController ?? this.nameController,
      cardNumberController: cardNumberController ?? this.cardNumberController,
      dateController: dateController ?? this.dateController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      addNewCardModelObj: addNewCardModelObj ?? this.addNewCardModelObj,
    );
  }
}
