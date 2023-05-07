import 'package:flutter/material.dart';
import 'package:market_place/modules/home_page/index.dart';
import 'package:page_transition/page_transition.dart';
import '../modules/home_page/widgets/product_details.dart';

class RouterClass {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const MyHomePage());
      case '/productDetails':
        return PageTransition(
          type: PageTransitionType.bottomToTop,
          duration: const Duration(milliseconds: 300),
          child: const ProductDetails(),
        );
      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
