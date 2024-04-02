// ignore_for_file: must_be_immutable

part of 'product_details_two_bloc.dart';

/// Represents the state of ProductDetailsTwo in the application.
class ProductDetailsTwoState extends Equatable {
  ProductDetailsTwoState({
    this.sliderIndex = 0,
    this.productDetailsTwoModelObj,
  });

  ProductDetailsTwoModel? productDetailsTwoModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        productDetailsTwoModelObj,
      ];

  ProductDetailsTwoState copyWith({
    int? sliderIndex,
    ProductDetailsTwoModel? productDetailsTwoModelObj,
  }) {
    return ProductDetailsTwoState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      productDetailsTwoModelObj:
          productDetailsTwoModelObj ?? this.productDetailsTwoModelObj,
    );
  }
}
