// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project2/audioposts.dart';
import 'package:flutter_project2/constant.dart';
import 'package:flutter_project2/content.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NewSlider extends StatefulWidget {
  @override
  State<NewSlider> createState() => _NewSliderState();
}

class _NewSliderState extends State<NewSlider> {
  // const NewSlider({ Key? key }) : super(key: key);
  final sliderImages = [
    'assets/Home1.png',
    'assets/Home1.png',
    'assets/Home1.png',
    'assets/Home1.png',
    'assets/Home1.png',
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Column(
      children: [
        CarouselSlider.builder(
          itemCount: sliderImages.length,
          itemBuilder: (context, index, realIndex) {
            final sliderImage = sliderImages[index];

            return buildImage(sliderImage, index, context);
          },
          options: CarouselOptions(
              viewportFraction: 1,
              autoPlay: true,
              height: 320,
              onPageChanged: (index, reason) {
                setState(() {
                  activeIndex = index;
                });
              }),
        ),
        // SizedBox(height: 20),
        buildIndicator(),
      ],
    );
  }

  buildImage(String sliderImage, int index, BuildContext context) {
    var size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        navigate(context);
      },
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/Home1.png'),
          ),
        ),
        width: size.width,
        // color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              color: kLightPurple.withOpacity(0.7),
              child: Container(
                width: 400,
                height: 120,
                color: kLightPurple.withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                  ),
                  child: Text("Nembe Oil Spill: Bayelsa Sets Up 11-Man Technical Committee, Gov. DiriDissatisfied with Rep's Silence over spill",style: TextStyle(fontFamily: 'simplified',fontSize: 15,fontStyle: FontStyle.normal,fontWeight: FontWeight.bold),)
                  // const Text(
                  //   "Nembe Oil Spill: Bayelsa Sets Up 11-Man Technical Committee, Gov. DiriDissatisfied with Rep's Silence over spill",
                  //   style: TextStyle(
                  //     fontSize: 22,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                ),
              ),
            ),
            // SizedBox(height: 10)
          ],
        ),
      ),
    );
  }

  void navigate(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return Content();
    }));
  }

  Widget buildIndicator() {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 38,
      color: Colors.grey.shade800,
      child: Center(
        child: AnimatedSmoothIndicator(
          activeIndex: activeIndex,
          count: sliderImages.length,
          effect: ExpandingDotsEffect(
            dotHeight: 15,
            dotWidth: 15,
            activeDotColor: Colors.white38,
            dotColor: Colors.grey.shade100,
          ),
        ),
      ),
    );
  }
}
