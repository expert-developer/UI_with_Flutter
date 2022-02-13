import 'package:flutter/material.dart';

import 'constant.dart';

class PressRelease extends StatelessWidget {
  const PressRelease({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kDarkPurple,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: kDarkBlue.withOpacity(0.3),
          elevation: 0.0,
          leading: const BackButton(),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
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
                      child: Text(
                        '3',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      radius: 10,
                      backgroundColor: Colors.red,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 60,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Image(
                              width: 90,
                              height: 90,
                              image:
                                  AssetImage('assets/Press Release-image2.png'),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Text(
                              'Press\nRelease',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        CreateContainer('01', 'January', '2022',
                            'Press Statement on the \nInconclusive Joint \ninvestigation vist to the \nNembe Oil Spill site'),
                        SizedBox(
                          height: 10,
                        ),
                        CreateContainer('06', 'January', '2022',
                            "NLNG Donates 150,000 \nMedical Equipment To Bayelsa"),
                        SizedBox(
                          height: 10,
                        ),
                        CreateContainer('12', 'January', '2022',
                            "Why I Didn't Interfere in IYC \nElection - Gov. Diri"),
                        SizedBox(
                          height: 10,
                        ),
                        CreateContainer('18', 'January', '2022',
                            "We Won't Cut Bayelsa \nWorkers Pay, Gov. Diri Assures"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                ],
              ),
            ),
            SliverFillRemaining(
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
      ),
    );
  }

  Widget CreateContainer(
      String text1, String text2, String text3, String text4) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Container(
            width: 85,
            height: 120,
            color: kLightBlue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  text1,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text(
                  text2,
                  style: TextStyle(fontSize: 10),
                ),
                Text(
                  text3,
                  style: TextStyle(fontSize: 10),
                ),
              ],
            ),
          ),
          Container(
            width: 275,
            height: 120,
            color: kLightPurple,
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text4,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
