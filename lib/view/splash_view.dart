import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sgts_app/res/color.dart';
import 'package:sgts_app/res/font_family.dart';
import 'package:sgts_app/utils/routes/routes_name.dart';
import 'package:sgts_app/view/home_screen.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushNamed(context, RoutesName.home);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.whiteColor,
        image: DecorationImage(
            image: AssetImage('assets/images/splash_bg.png'),
            alignment: Alignment.topLeft),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Text(
              'Sri Ganesh Tile &\nSanitarywares',
              textAlign: TextAlign.center,
              style: GoogleFonts.mPlus1p(
                  fontWeight: FontWeight.w800,
                  color: AppColors.blackColor,
                  fontSize: 30.0,
                  wordSpacing: 1,
                  textStyle: Theme.of(context).textTheme.headlineLarge),
            ),
          ),
        ],
      ),
    );
  }
}
