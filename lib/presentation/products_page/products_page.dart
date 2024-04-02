import 'widgets/products_item_widget.dart';
import 'models/products_item_model.dart';
import 'models/products_model.dart';
import 'package:flutter/material.dart';
import 'package:mariam_s_application2/core/app_export.dart';
import 'bloc/products_bloc.dart';

// ignore_for_file: must_be_immutable
class ProductsPage extends StatefulWidget {
  const ProductsPage({Key? key})
      : super(
          key: key,
        );

  @override
  ProductsPageState createState() => ProductsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ProductsBloc>(
      create: (context) => ProductsBloc(ProductsState(
        productsModelObj: ProductsModel(),
      ))
        ..add(ProductsInitialEvent()),
      child: ProductsPage(),
    );
  }
}

class ProductsPageState extends State<ProductsPage>
    with AutomaticKeepAliveClientMixin<ProductsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 25.v),
              _buildProducts(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProducts(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: BlocSelector<ProductsBloc, ProductsState, ProductsModel?>(
        selector: (state) => state.productsModelObj,
        builder: (context, productsModelObj) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 195.v,
              crossAxisCount: 2,
              mainAxisSpacing: 15.h,
              crossAxisSpacing: 15.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: productsModelObj?.productsItemList.length ?? 0,
            itemBuilder: (context, index) {
              ProductsItemModel model =
                  productsModelObj?.productsItemList[index] ??
                      ProductsItemModel();
              return ProductsItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }
}
