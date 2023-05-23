import 'package:e_commerce/common/widgets/bottom_bar.dart';
import 'package:e_commerce/features/address/screens/address_screen.dart';
import 'package:e_commerce/features/admin/screens/add_product_screen.dart';
import 'package:e_commerce/features/auth/screens/auth_screen.dart';
import 'package:e_commerce/features/home/screens/category_deals.dart';
import 'package:e_commerce/features/home/screens/home_screen.dart';
import 'package:e_commerce/features/order_details/screens/order_details_screen.dart';
import 'package:e_commerce/features/product_details/screens/product_detail_screen.dart';
import 'package:e_commerce/features/search/screens/search_screen.dart';
import 'package:e_commerce/models/order.dart';
import 'package:e_commerce/models/product.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (context) => const AuthScreen());
    case HomeScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (context) => const HomeScreen());

    case BottomBar.routeName:
      return MaterialPageRoute(
          settings: routeSettings, builder: (context) => const BottomBar());
    case AddProductScreen.routeName:
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => const AddProductScreen());
    case CategoryDealsScreen.routeName:
      var category = routeSettings.arguments as String;
      return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => CategoryDealsScreen(
                category: category,
              ));
    case SearchScreen.routeName:
      var searchQuery = routeSettings.arguments as String;

      return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => SearchScreen(
                searchQuery: searchQuery,
              ));
    case ProductDetailScreen.routeName:
      var searchProductQuery = routeSettings.arguments as Product;

      return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => ProductDetailScreen(
                product: searchProductQuery,
              ));
    case AddressScreen.routeName:
      var totalAmountQuery = routeSettings.arguments as String;

      return MaterialPageRoute(
          settings: routeSettings,
          builder: (context) => AddressScreen(
                totalAmount: totalAmountQuery,
              ));
    case OrderDetailScreen.routeName:
      var order = routeSettings.arguments as Order;
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => OrderDetailScreen(
          order: order,
        ),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (context) => const Scaffold(
          body: Center(
            child: Text('Page not found'),
          ),
        ),
      );
  }
}
