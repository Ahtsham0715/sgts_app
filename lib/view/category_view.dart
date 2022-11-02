import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sgts_app/res/color.dart';
import 'package:sgts_app/utils/routes/routes_name.dart';

class CategoryView extends StatefulWidget {
  Map args;

  CategoryView({super.key, required this.args});

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  List subcatslist = [
    {'name': 'Squatting Pans (IWC)', 'image': 'assets/images/c1.png'},
    {'name': 'Western Closets (EWC)', 'image': 'assets/images/c2.png'},
    {
      'name': 'One Piece Closets (Single Suite)',
      'image': 'assets/images/c3.png'
    },
    {'name': 'Wash Basins', 'image': 'assets/images/c4.png'},
    {
      'name': 'Designer Wash Basins (Table top)',
      'image': 'assets/images/c5.png'
    },
    {
      'name': 'Designer Single Piece Wash Basins',
      'image': 'assets/images/c6.png'
    },
    {
      'name': 'Designe Wash Basins & Pedestals',
      'image': 'assets/images/c7.png'
    },
    {'name': 'Urinals', 'image': 'assets/images/c8.png'},
  ];

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print(widget.args);
    }
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          // backgroundColor: Colors.grey,
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
            preferredSize: Size(width, height * 0.3),
            child: Column(
              children: [
                Container(
                  height: height * 0.23,
                  margin: const EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: AppColors.whiteColor,
                    image: DecorationImage(
                        image: AssetImage(widget.args['image'].toString()),
                        fit: BoxFit.fill),
                  ),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20.0),
                      child: Text(
                        widget.args['name'].toString(),
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
                Padding(
                  padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                  child: Text(
                    'Product categories',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        color: AppColors.blackColor,
                        fontSize: 16.0,
                        wordSpacing: 0,
                        textStyle: Theme.of(context).textTheme.headline4),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: GridView.builder(
          padding: const EdgeInsets.all(25.0),
          // physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 15.0,
            childAspectRatio: 0.7,
          ),
          itemCount: subcatslist.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(RoutesName.products);
              },
              child: Column(
                children: [
                  SizedBox(
                    height: height * 0.2,
                    child: Container(
                      // margin: const EdgeInsets.all(2.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.blueGrey.withOpacity(0.5),
                        image: DecorationImage(
                            image: AssetImage(
                              subcatslist[index]['image'].toString(),
                            ),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * 0.38,
                    child: Text(
                      subcatslist[index]['name'].toString(),
                      textAlign: TextAlign.center,
                      softWrap: true,
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          color: AppColors.blackColor,
                          fontSize: 14.0,
                          wordSpacing: 0,
                          textStyle: Theme.of(context).textTheme.headline4),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
