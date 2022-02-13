// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_project2/audioposts.dart';
import 'package:flutter_project2/constant.dart';
import 'package:flutter_project2/governo.dart';
import 'package:flutter_project2/new_slider.dart';
import 'package:flutter_project2/newsandevents.dart';
import 'package:flutter_project2/notification.dart';
import 'package:flutter_project2/pressrelease.dart';
import 'package:flutter_project2/prosperitypost.dart';
import 'package:flutter_project2/slider.dart';
import 'package:flutter_project2/videofeeds.dart';
import 'package:google_fonts/google_fonts.dart';

import 'newscontent.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: MyHomePage(title: 'test'),
      // MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({required this.title});

  String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kDarkBlue,
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 80,
        title: const Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Image(
            image: const AssetImage('assets/Header.png'),
            width: 210,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 10),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return NotificationScreen();
                    },
                  ),
                );
              },
              child: Stack(
                children: const [
                  Image(
                    image: AssetImage('assets/notification.png'),
                    width: 31,
                    height: 31,
                  ),
                  Positioned(
                    right: 0,
                    child: CircleAvatar(
                      // child: Icon(
                      //   Icons.exposure_plus_1,
                      //   size: 15,
                      //   color: Colors.white,
                      // ),
                      child: Text(
                        '3',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      radius: 10,
                      backgroundColor: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
        backgroundColor: kDarkBlue,
      ),
      drawer: Drawer(
        backgroundColor: kDarkPurple,
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(),
              child: Container(
                margin: EdgeInsets.only(bottom: 0),
                child: Center(
                  child: Image(
                      image:
                          AssetImage('assets/Side Menu-Screen - 1-image.png')),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(color: Colors.grey, thickness: 5),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return Prosperitypost();
                          },
                        ),
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 10, left: 30),
                      width: double.infinity,
                      height: 35,
                      color: Colors.black.withOpacity(0.4),
                      child: const Text(
                        'THE PROSPERITY POST',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    ),
                  ),
                  Divider(color: Colors.grey, thickness: 5),
                  Container(
                    padding: EdgeInsets.only(top: 5, left: 30),
                    width: double.infinity,
                    height: 35,
                    child: Row(children: const [
                      Text(
                        'Bayelsa State: An Overview',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.blue),
                      ),
                      Spacer(),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.blue,
                      ),
                    ]),
                  ),
                  Divider(color: Colors.grey, thickness: 5),
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 60),
                    width: double.infinity,
                    height: 35,
                    child: Text(
                      'History and Culture',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 60),
                    width: double.infinity,
                    height: 35,
                    child: Text(
                      'Past Governors',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 60),
                    width: double.infinity,
                    height: 35,
                    child: Text(
                      'State Symbols',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 60),
                    width: double.infinity,
                    height: 35,
                    child: Text(
                      'Living, Working & Doing Business',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 60),
                    width: double.infinity,
                    height: 35,
                    child: Text(
                      'Tourism & Notable Events',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                  ),
                  Divider(color: Colors.grey, thickness: 5),
                  Container(
                    padding: EdgeInsets.only(top: 5, left: 30),
                    width: double.infinity,
                    height: 35,
                    child: Text(
                      'Bayelsa State: An Overview',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                  ),
                  Divider(color: Colors.grey, thickness: 5),
                  Container(
                    padding: EdgeInsets.only(top: 5, left: 30),
                    width: double.infinity,
                    height: 35,
                    child: Row(children: const [
                      Text(
                        'The Prosperity Government',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.blue),
                      ),
                      Spacer(),
                      Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.blue,
                      ),
                    ]),
                  ),
                  Divider(color: Colors.grey, thickness: 5),
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 60),
                    width: double.infinity,
                    height: 35,
                    child: Text(
                      'Executive',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 60),
                    width: double.infinity,
                    height: 35,
                    child: Text(
                      'Legislature',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 60),
                    width: double.infinity,
                    height: 35,
                    child: Text(
                      'Judiciary',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                  ),
                  Divider(color: Colors.grey, thickness: 5),
                  Container(
                    padding: EdgeInsets.only(top: 5, left: 30),
                    width: double.infinity,
                    height: 35,
                    child: Text(
                      "MDA's",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                  ),
                  Divider(color: Colors.grey, thickness: 5),
                  Container(
                    padding: EdgeInsets.only(top: 5, left: 30),
                    width: double.infinity,
                    height: 35,
                    child: Text(
                      "State Projects",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                  ),
                  Divider(color: Colors.grey, thickness: 5),
                  Container(
                    padding: EdgeInsets.only(top: 5, left: 30),
                    width: double.infinity,
                    height: 35,
                    child: Text(
                      "Government Services",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                  ),
                  Divider(color: Colors.grey, thickness: 5),
                  Container(
                    padding: EdgeInsets.only(top: 5, left: 30),
                    width: double.infinity,
                    height: 35,
                    child: Text(
                      "News and Events",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                  ),
                  Divider(color: Colors.grey, thickness: 5),
                  Container(
                    padding: EdgeInsets.only(top: 5, left: 30),
                    width: double.infinity,
                    height: 35,
                    child: Text(
                      "Contact Us",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                  ),
                  Divider(color: Colors.grey, thickness: 5),
                  Container(
                    padding: EdgeInsets.only(top: 5, left: 30),
                    width: double.infinity,
                    height: 35,
                    child: Text(
                      "Our Proud Partners",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Colors.grey),
                    ),
                  ),
                  Divider(color: Colors.grey, thickness: 5),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: Center(
                      child: Column(
                        children: [
                          Text('FOLLOW US'),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Image(
                                image: AssetImage(
                                    'assets/Side Menu-Screen - 1-image4.png'),
                                width: 40,
                                height: 40,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/Side Menu-Screen - 1-image5.png'),
                                width: 40,
                                height: 40,
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Image(
                                image: AssetImage(
                                    'assets/Side Menu-Screen - 1-image6.png'),
                                width: 40,
                                height: 40,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  color: kDarkBlue,
                  child: Column(
                    children: [
                      Divider(
                          color: Colors.blue,
                          thickness: 5,
                          indent: 20,
                          endIndent: 20),
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 1,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const Governo();
                                  },
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Column(
                                  children: const [
                                    CircleAvatar(
                                      radius: 30,
                                      child: Image(
                                        image: AssetImage('assets/1.png'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "GOV.\nDOUYE DIRI",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const PressRelease();
                                  },
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Column(
                                  children: const [
                                    CircleAvatar(
                                      radius: 30,
                                      child: Image(
                                        image: AssetImage('assets/2.png'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "PRESS\nRELEASE",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                const Positioned(
                                  right: 0,
                                  top: 0,
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.red,
                                    // child: Icon(
                                    //   Icons.exposure_plus_1_rounded,
                                    //   color: Colors.white,
                                    //   size: 20,
                                    // ),
                                    child: Text(
                                      '3',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return VerticalSliderDemo();
                                  },
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Column(
                                  children: const [
                                    CircleAvatar(
                                      radius: 30,
                                      child: Image(
                                        image: AssetImage('assets/3.png'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "PUBLIC\nNOTICE",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                const Positioned(
                                  right: 0,
                                  top: 0,
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.red,
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return VideoFeeds();
                                  },
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Column(
                                  children: const [
                                    CircleAvatar(
                                      radius: 30,
                                      child: Image(
                                        image: AssetImage('assets/4.png'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "VIDEO\nFEEDS",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                const Positioned(
                                  right: 0,
                                  top: 0,
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.red,
                                    child: Text(
                                      '10',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) {
                                    return const AudioPosts();
                                  },
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Column(
                                  children: const [
                                    CircleAvatar(
                                      radius: 30,
                                      child: Image(
                                        image: AssetImage('assets/5.png'),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text(
                                      "AUDIO\nBROADCASTS",
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                const Positioned(
                                  right: 0,
                                  top: 0,
                                  child: CircleAvatar(
                                    radius: 12,
                                    backgroundColor: Colors.red,
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 1,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      NewSlider(),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          children: [
                            Container(
                              height: 30,
                              width: 10,
                              color: Colors.blue,
                              child: const Text(''),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              'News and Events',
                              style: TextStyle(
                                  fontFamily: 'raleway',
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            const Spacer(),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return NewsAndEvents();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                'See all',
                                style: TextStyle(
                                    fontFamily: 'raleway',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Icon(
                              Icons.arrow_right_alt,
                              size: 30,
                            )
                          ],
                        ),
                      ),
                      CreatContainer(
                          'Gov Diri Tasks Army On Agge, \nOluasiri Bases - Seeks \nCooperation On Arrests In \nBayelsa Communities',
                          'assets/Event2.jpg'),
                      CreatContainer(
                          'Gov. Diri Lauds Buhari For New\nPolice Headquarters In\nYenagoa-Seeks Review Of \nRevenue Allocation Formular',
                          'assets/Event3.jpg'),
                      CreatContainer(
                          'Gov Diri Tasks Army On Agge, \nOluasiri Bases - Seeks \nCooperation On Arrests In \nBayelsa Communities',
                          'assets/Event2.jpg'),
                      CreatContainer(
                          'Gov. Diri Lauds Buhari For New\nPolice Headquarters In\nYenagoa-Seeks Review Of \nRevenue Allocation Formular',
                          'assets/Event3.jpg'),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
          SliverFillRemaining(
            fillOverscroll: true,
            hasScrollBody: false,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 40,
                color: Colors.red,
                child: const Center(
                  child: Text(
                    'Our Proud Partners: Zenith Bank | UBA | Agip | NCDMB',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget CreatContainer(String text1, String image) {
    return Container(
      margin: EdgeInsets.only(right: 8, left: 8, top: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      color: kLightPurple,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Text(
                  text1,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 30,
                width: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: kBlueDark,
                ),
                child: Row(
                  children: const [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: CircleAvatar(
                        radius: 15,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: kBlueDark,
                          child: Icon(
                            Icons.arrow_back,
                            size: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      '2 days ago',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Spacer(),
          Container(
            width: MediaQuery.of(context).size.width * 0.35,
            height: MediaQuery.of(context).size.width * 0.3,
            child: Image(
              fit: BoxFit.fill,
              image: AssetImage(image),
            ),
          )
        ],
      ),
    );
  }
}
