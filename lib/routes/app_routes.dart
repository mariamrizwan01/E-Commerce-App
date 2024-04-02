import 'package:flutter/material.dart';
import '../presentation/onboarding_v_two_screen/onboarding_v_two_screen.dart';
import '../presentation/onboarding_v_two_one_screen/onboarding_v_two_one_screen.dart';
import '../presentation/grocery_home_container_screen/grocery_home_container_screen.dart';
import '../presentation/grocery_home_one_screen/grocery_home_one_screen.dart';
import '../presentation/categories_screen/categories_screen.dart';
import '../presentation/categories_one_tab_container_screen/categories_one_tab_container_screen.dart';
import '../presentation/products_tab_container_screen/products_tab_container_screen.dart';
import '../presentation/product_details_screen/product_details_screen.dart';
import '../presentation/product_details_one_screen/product_details_one_screen.dart';
import '../presentation/product_details_two_screen/product_details_two_screen.dart';
import '../presentation/shopping_cart_offer_screen/shopping_cart_offer_screen.dart';
import '../presentation/shopping_cart_one_screen/shopping_cart_one_screen.dart';
import '../presentation/checkout_screen/checkout_screen.dart';
import '../presentation/add_new_card_screen/add_new_card_screen.dart';
import '../presentation/orders_screen/orders_screen.dart';
import '../presentation/orders_one_tab_container_screen/orders_one_tab_container_screen.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String onboardingVTwoScreen = '/onboarding_v_two_screen';

  static const String onboardingVTwoOneScreen = '/onboarding_v_two_one_screen';

  static const String groceryHomeContainerScreen =
      '/grocery_home_container_screen';

  static const String groceryHomePage = '/grocery_home_page';

  static const String groceryHomeOneScreen = '/grocery_home_one_screen';

  static const String categoriesScreen = '/categories_screen';

  static const String categoriesOnePage = '/categories_one_page';

  static const String categoriesOneTabContainerScreen =
      '/categories_one_tab_container_screen';

  static const String productsPage = '/products_page';

  static const String productsTabContainerScreen =
      '/products_tab_container_screen';

  static const String productDetailsScreen = '/product_details_screen';

  static const String productDetailsOneScreen = '/product_details_one_screen';

  static const String productDetailsTwoScreen = '/product_details_two_screen';

  static const String shoppingCartOfferScreen = '/shopping_cart_offer_screen';

  static const String shoppingCartOneScreen = '/shopping_cart_one_screen';

  static const String checkoutScreen = '/checkout_screen';

  static const String addNewCardScreen = '/add_new_card_screen';

  static const String ordersScreen = '/orders_screen';

  static const String ordersOnePage = '/orders_one_page';

  static const String ordersOneTabContainerScreen =
      '/orders_one_tab_container_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        onboardingVTwoScreen: OnboardingVTwoScreen.builder,
        onboardingVTwoOneScreen: OnboardingVTwoOneScreen.builder,
        groceryHomeContainerScreen: GroceryHomeContainerScreen.builder,
        groceryHomeOneScreen: GroceryHomeOneScreen.builder,
        categoriesScreen: CategoriesScreen.builder,
        categoriesOneTabContainerScreen:
            CategoriesOneTabContainerScreen.builder,
        productsTabContainerScreen: ProductsTabContainerScreen.builder,
        productDetailsScreen: ProductDetailsScreen.builder,
        productDetailsOneScreen: ProductDetailsOneScreen.builder,
        productDetailsTwoScreen: ProductDetailsTwoScreen.builder,
        shoppingCartOfferScreen: ShoppingCartOfferScreen.builder,
        shoppingCartOneScreen: ShoppingCartOneScreen.builder,
        checkoutScreen: CheckoutScreen.builder,
        addNewCardScreen: AddNewCardScreen.builder,
        ordersScreen: OrdersScreen.builder,
        ordersOneTabContainerScreen: OrdersOneTabContainerScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: OnboardingVTwoScreen.builder
      };
}
