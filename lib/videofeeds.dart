import 'package:flutter/material.dart';

import 'constant.dart';

class VideoFeeds extends StatelessWidget {
  const VideoFeeds({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: kDarkBlue,
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
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Image(
                            width: 90,
                            height: 90,
                            image: AssetImage('assets/Video Feeds-image2.png'),
                          ),
                          SizedBox(
                            width: 40,
                          ),
                          Text(
                            'Video\nFeeds',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      CreateContainer(context, 'assets/Video Feeds-image5.jpg',
                          'Gov. Douye Diri on a thanksgiving \nspeach at the Government House \nChapel'),
                      SizedBox(
                        height: 15,
                      ),
                      CreateContainer(context, 'assets/Video Feeds-image4.jpg',
                          'The Governor on an inspection tour \non an on-going construction project \nat the Dual Carriage Road Yenagoa'),
                      SizedBox(
                        height: 15,
                      ),
                      CreateContainer(context, 'assets/Video Feeds-image3.jpg',
                          'Dinner Night at the Chief D.S.P. \nAlamieyeseigha Banquet Hall to mark \nthe 1st anniversary of the "Prosperity \nGovt"'),
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
    ));
  }

  Widget CreateContainer(context, String image, String text) {
    return Container(
      child: Stack(
        children: [
          Container(
            child: Image(
                image: AssetImage(image),
                height: 180,
                width: double.infinity,
                fit: BoxFit.fitWidth),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 100,
              color: kLightPurple.withOpacity(0.6),
              child: Row(
                children: [
                  Container(
                    height: double.infinity,
                    width: 120,
                    color: kLightPurple.withOpacity(0.5),
                    child: Center(
                      child: CircleAvatar(
                        radius: 35,
                        backgroundColor: kLightred,
                        child: Center(
                            child: Image(
                          image: AssetImage('assets/Video Feeds-image6.png'),
                          width: 40,
                          height: 40,
                        )),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 15, top: 10, bottom: 10),
                    child: Text(
                      text,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
