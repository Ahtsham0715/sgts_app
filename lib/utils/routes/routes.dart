import 'package:flutter/material.dart';
import 'package:sgts_app/utils/routes/routes_name.dart';
import 'package:sgts_app/view/brands_view.dart';
import 'package:sgts_app/view/category_view.dart';
import 'package:sgts_app/view/home_screen.dart';
import 'package:sgts_app/view/product_details_view.dart';
import 'package:sgts_app/view/products_view.dart';
import 'package:sgts_app/view/splash_view.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.splash:
        return MaterialPageRoute(
            builder: (BuildContext context) => const SplashView());

      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen());

      case RoutesName.brands:
        return MaterialPageRoute(
            builder: (BuildContext context) => const BrandsView());

      case RoutesName.products:
        return MaterialPageRoute(
            builder: (BuildContext context) => const ProductsView());

      case RoutesName.category:
        return MaterialPageRoute(
            builder: (BuildContext context) => CategoryView(
                  args: settings.arguments as Map,
                ));
      case RoutesName.productdetails:
        return MaterialPageRoute(
            builder: (BuildContext context) => ProductDetailsView(
                  args: settings.arguments as Map,
                ));

      // case RoutesName.login:
      //   return MaterialPageRoute(builder: (BuildContext context) => const LoginView());
      // case RoutesName.signUp:
      //   return MaterialPageRoute(builder: (BuildContext context) => const SignUpView());

      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          );
        });
    }
  }
}
