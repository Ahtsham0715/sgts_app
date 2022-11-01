import 'package:flutter/material.dart';
import 'package:sgts_app/res/color.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  _SplashViewState createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/logo.png',
          ),
          Text(
            'SRI GANESH TILE &\nSANITARYWARES',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline4,
          ),
        ],
      ),
    );
  }
}
