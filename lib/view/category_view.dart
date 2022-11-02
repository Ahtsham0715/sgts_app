import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sgts_app/res/color.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({super.key});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  @override
  Widget build(BuildContext context) {
    // final todo = ModalRoute.of(context)!.settings.arguments;
    // if (kDebugMode) {
    //   print(todo);
    // }
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 40.0,
          elevation: 0.0,
          toolbarHeight: height * 0.085,
          centerTitle: false,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              CupertinoIcons.back,
            ),
          ),
          title: Text(
            'Sub Categories',
            textAlign: TextAlign.left,
            style: GoogleFonts.montserrat(
                fontWeight: FontWeight.w700,
                color: AppColors.blackColor,
                fontSize: 20.0,
                wordSpacing: 0,
                textStyle: Theme.of(context).textTheme.headline4),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.phone_outlined,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.location_on_outlined,
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size(width, height * 0.02),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  'Brands',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w700,
                      color: AppColors.blackColor,
                      fontSize: 16.0,
                      wordSpacing: 0,
                      textStyle: Theme.of(context).textTheme.headline4),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
