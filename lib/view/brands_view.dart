import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sgts_app/res/color.dart';
import 'package:sgts_app/utils/routes/routes_name.dart';

class BrandsView extends StatefulWidget {
  const BrandsView({super.key});

  @override
  State<BrandsView> createState() => _BrandsViewState();
}

class _BrandsViewState extends State<BrandsView> {
  List brandslist = [
    {'name': 'Parryware', 'image': 'assets/images/b1.png'},
    {'name': 'Johnson', 'image': 'assets/images/b2.png'},
    {'name': 'Safari', 'image': 'assets/images/b3.png'},
    {'name': 'Pware', 'image': 'assets/images/b4.png'},
    {'name': 'Parryware', 'image': 'assets/images/b1.png'},
    {'name': 'Johnson', 'image': 'assets/images/b2.png'},
    {'name': 'Safari', 'image': 'assets/images/b3.png'},
    {'name': 'Pware', 'image': 'assets/images/b4.png'},
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
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
          'Sanitarywares',
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
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        // physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          // crossAxisSpacing: 30.0,
          mainAxisSpacing: 20.0,
          childAspectRatio: 2.5,
        ),
        itemCount: brandslist.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.pushNamed(context, RoutesName.category, arguments: {
                'name': brandslist[index]['name'].toString(),
                'image': brandslist[index]['image'].toString(),
              });
            },
            child: Container(
              height: height * 0.1,
              // margin: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: AppColors.whiteColor,
                image: DecorationImage(
                    image: AssetImage(brandslist[index]['image']),
                    fit: BoxFit.fill),
              ),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    brandslist[index]['name'].toString(),
                    textAlign: TextAlign.left,
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        color: AppColors.whiteColor,
                        fontSize: 18.0,
                        wordSpacing: 0,
                        textStyle: Theme.of(context).textTheme.headline4),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
