import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sgts_app/res/color.dart';
import 'package:sgts_app/utils/routes/routes_name.dart';
import 'package:sgts_app/utils/utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController searchController = TextEditingController();
  CarouselController buttonCarouselController = CarouselController();
  ValueNotifier<int> _current = ValueNotifier(0);
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return WillPopScope(
      onWillPop: () async {
        return Utils.onWillPop(context);
      },
      child: Scaffold(
        appBar: AppBar(
          leadingWidth: 35.0,
          elevation: 0.0,
          toolbarHeight: height * 0.09,
          centerTitle: false,
          title: SizedBox(
            height: height * 0.06,
            child: Row(
              children: [
                Image.asset(
                  'assets/images/logo.png',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Sri Ganesh Tile\n& Sanitarywares',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.mPlus1p(
                        fontWeight: FontWeight.w800,
                        color: AppColors.blackColor,
                        fontSize: 16.0,
                        wordSpacing: 0,
                        textStyle: Theme.of(context).textTheme.headline4),
                  ),
                ),
              ],
            ),
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
        ),
        drawer: Drawer(),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextFormField(
                controller: searchController,
                decoration: InputDecoration(
                  hintText: 'Search anything... ',
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: AppColors.blackColor,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  prefixIcon: const Icon(Icons.search_outlined),
                ),
              ),
            ),
            ListTile(
              isThreeLine: false,
              // minVerticalPadding: 2,
              dense: false,
              leading: Text(
                'Categories',
                textAlign: TextAlign.center,
                style: GoogleFonts.mPlus1p(
                    fontWeight: FontWeight.w800,
                    color: AppColors.blackColor,
                    fontSize: 16.0,
                    wordSpacing: 1,
                    textStyle: Theme.of(context).textTheme.headlineLarge),
              ),
              trailing: TextButton(
                onPressed: () {},
                child: Text(
                  'View All',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.mPlus1p(
                      fontWeight: FontWeight.w800,
                      color: AppColors.blueColor,
                      fontSize: 12.0,
                      wordSpacing: 1,
                      textStyle: Theme.of(context).textTheme.headlineLarge),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.11,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 15,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {},
                    child: SizedBox(
                      height: height * 0.11,
                      width: width * 0.225,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 5.0),
                            child: CircleAvatar(
                              radius: 30.0,
                              backgroundColor: AppColors.greyColor,
                              foregroundImage: NetworkImage(
                                'https://www.zameen.com/blog/wp-content/uploads/2019/10/image-6-7-1024x640.jpg',
                              ),
                              child: Icon(
                                Icons.category,
                                size: 25.0,
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Kitchen Sinks',
                              textAlign: TextAlign.center,
                              softWrap: true,
                              maxLines: 2,
                              overflow: TextOverflow.visible,
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.blackColor,
                                  fontSize: 10.0,
                                  wordSpacing: 0,
                                  textBaseline: TextBaseline.alphabetic,
                                  textStyle:
                                      Theme.of(context).textTheme.headline4),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Stack(
              alignment: AlignmentDirectional.bottomCenter,
              children: [
                CarouselSlider.builder(
                  itemCount: imgList.length,
                  carouselController: buttonCarouselController,
                  options: CarouselOptions(
                    enableInfiniteScroll: false,
                    autoPlay: false,
                    enlargeCenterPage: true,
                    onPageChanged: (index, reason) {
                      _current.value = index;
                    },
                  ),
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      Container(
                    height: height * 0.2,
                    width: width,
                    decoration: BoxDecoration(
                      color: AppColors.greyColor,
                      borderRadius: BorderRadius.circular(10.0),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                            imgList[itemIndex].toString(),
                          )),
                    ),
                    // child: Text(itemIndex.toString()),
                  ),
                ),
                ValueListenableBuilder(
                    valueListenable: _current,
                    builder: (context, val, child) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: imgList.asMap().entries.map((entry) {
                          return GestureDetector(
                            onTap: () => buttonCarouselController
                                .animateToPage(entry.key),
                            child: Container(
                              width: 12.0,
                              height: 12.0,
                              margin: const EdgeInsets.symmetric(
                                  vertical: 8.0, horizontal: 4.0),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: val == entry.key
                                    ? AppColors.yellowColor
                                    : AppColors.whiteColor,
                              ),
                            ),
                          );
                        }).toList(),
                      );
                    }),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text(
                'Our Brands',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w700,
                    color: AppColors.blackColor,
                    fontSize: 16.0,
                    wordSpacing: 1,
                    textStyle: Theme.of(context).textTheme.headlineLarge),
              ),
            ),
            GridView.builder(
              padding: const EdgeInsets.all(15.0),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 15.0,
                mainAxisSpacing: 15.0,
              ),
              itemCount: 7,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, RoutesName.brands);
                  },
                  child: Container(
                    // margin: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: AppColors.whiteColor,
                      image: DecorationImage(
                          image: AssetImage('assets/images/p${index + 1}.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
