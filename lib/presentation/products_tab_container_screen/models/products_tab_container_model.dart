// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [products_tab_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductsTabContainerModel extends Equatable {
  ProductsTabContainerModel() {}

  ProductsTabContainerModel copyWith() {
    return ProductsTabContainerModel();
  }

  @override
  List<Object?> get props => [];
}
