import 'package:flutter/material.dart';
import 'package:sgts_app/res/color.dart';
import 'package:sgts_app/utils/routes/routes.dart';
import 'package:sgts_app/utils/routes/routes_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        iconTheme: const IconThemeData(
          size: 30.0,
        ),
        appBarTheme: const AppBarTheme(
            iconTheme: IconThemeData(
              size: 30.0,
            ),
            backgroundColor: Colors.transparent,
            foregroundColor: AppColors.blackColor),
      ),
      initialRoute: RoutesName.splash,
      onGenerateRoute: Routes.generateRoute,
    );
  }
}
