import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sgts_app/res/color.dart';
import 'package:sgts_app/res/components/social_button.dart';

class ProductDetailsView extends StatefulWidget {
  Map args;
  ProductDetailsView({super.key, required this.args});

  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView> {
  CarouselController buttonCarouselController = CarouselController();
  ValueNotifier<int> _current = ValueNotifier(0);
  final List<String> imgList = [
    'assets/images/c1.png',
    'assets/images/c2.png',
    'assets/images/c3.png',
    'assets/images/c4.png',
    'assets/images/c5.png',
    'assets/images/c6.png',
    'assets/images/c7.png',
  ];
  final List<String> productslist = [
    'assets/images/d1.png',
    'assets/images/d2.png',
    'assets/images/c3.png',
    'assets/images/c4.png',
    'assets/images/c5.png',
    'assets/images/c6.png',
    'assets/images/c7.png',
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: height * 0.4,
        leading: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: CircleAvatar(
                backgroundColor: AppColors.whiteColor.withOpacity(.65),
                radius: 25.0,
                child: const Icon(
                  Icons.arrow_back,
                ),
              ),
            ),
          ),
        ),
        flexibleSpace: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            CarouselSlider.builder(
              itemCount: imgList.length,
              carouselController: buttonCarouselController,
              options: CarouselOptions(
                clipBehavior: Clip.antiAlias,
                viewportFraction: 1.0,
                enableInfiniteScroll: true,
                autoPlay: false,
                enlargeCenterPage: false,
                height: height * 0.45,
                onPageChanged: (index, reason) {
                  _current.value = index;
                },
              ),
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) =>
                      Container(
                height: height * 0.45,
                width: width,
                decoration: BoxDecoration(
                  color: AppColors.greyColor,
                  borderRadius: BorderRadius.circular(0.0),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
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
                        onTap: () =>
                            buttonCarouselController.animateToPage(entry.key),
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
      ),
      body: ListView(
        children: [
          SizedBox(
            height: height * 0.2,
            child: GridView.builder(
              padding: const EdgeInsets.all(10.0),
              // physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 20.0,
                childAspectRatio: 1.0,
              ),
              itemCount: productslist.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: AppColors.greyColor.withOpacity(0.5),
                      image: DecorationImage(
                          image: AssetImage(
                            productslist[index].toString(),
                          ),
                          fit: BoxFit.fill),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text(
              'Ruby Arab PAN',
              textAlign: TextAlign.left,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w700,
                  color: AppColors.blackColor,
                  fontSize: 20.0,
                  wordSpacing: 0,
                  textStyle: Theme.of(context).textTheme.headline4),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            child: RichText(
              text: TextSpan(
                  text: "Code : ",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w700,
                      color: AppColors.blackColor,
                      fontSize: 18.0,
                      wordSpacing: 0,
                      textStyle: Theme.of(context).textTheme.headline4),
                  children: [
                    TextSpan(
                      text: "Po442PW0300\n",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackColor,
                          fontSize: 18.0,
                          wordSpacing: 0,
                          textStyle: Theme.of(context).textTheme.headline4),
                    ),
                    TextSpan(
                      text: "Dimensions : ",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w700,
                          color: AppColors.blackColor,
                          fontSize: 18.0,
                          wordSpacing: 0,
                          textStyle: Theme.of(context).textTheme.headline4),
                    ),
                    TextSpan(
                      text: "390x500x190\n",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackColor,
                          fontSize: 18.0,
                          wordSpacing: 0,
                          textStyle: Theme.of(context).textTheme.headline4),
                    ),
                  ]),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
            child: Text(
              '₹3,150',
              textAlign: TextAlign.left,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w700,
                  color: AppColors.blackColor,
                  fontSize: 32.0,
                  wordSpacing: 0,
                  textStyle: Theme.of(context).textTheme.headline4),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            child: RichText(
              text: TextSpan(
                  text: "Available : ",
                  style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w700,
                      color: AppColors.blackColor,
                      fontSize: 14.0,
                      wordSpacing: 0,
                      textStyle: Theme.of(context).textTheme.headline4),
                  children: [
                    TextSpan(
                      text: "In Stock\n",
                      style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          color: AppColors.blackColor,
                          fontSize: 14.0,
                          wordSpacing: 0,
                          textStyle: Theme.of(context).textTheme.headline4),
                    ),
                  ]),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
              textAlign: TextAlign.left,
              style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.w400,
                  color: AppColors.blackColor,
                  fontSize: 18.0,
                  wordSpacing: 0,
                  textStyle: Theme.of(context).textTheme.headline4),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              // width: 50.0,
              height: height * 0.07,
              margin: EdgeInsets.only(
                  right: width * 0.5, top: 5.0, bottom: 5.0, left: 20.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: AppColors.blueColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    'assets/images/wa_icon.png',
                  ),
                  Text(
                    'Enquire',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        color: AppColors.whiteColor,
                        fontSize: 16.0,
                        wordSpacing: 0,
                        textStyle: Theme.of(context).textTheme.headline4),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                Text(
                  'SHARE  ',
                  textAlign: TextAlign.left,
                  style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      color: AppColors.blackColor,
                      fontSize: 20.0,
                      wordSpacing: 0,
                      textStyle: Theme.of(context).textTheme.headline4),
                ),
                SocialButton(
                  onPress: () {},
                  imagepath: 'assets/images/Fb_icon.png',
                ),
                SocialButton(
                  onPress: () {},
                  imagepath: 'assets/images/tw_icon.png',
                ),
                SocialButton(
                  onPress: () {},
                  imagepath: 'assets/images/insta_icon.png',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
