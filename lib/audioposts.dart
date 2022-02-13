
import 'package:flutter/material.dart';


import 'constant.dart';

class AudioPosts extends StatelessWidget {
  const AudioPosts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kDarkPurple,
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
                      child: Icon(
                        Icons.exposure_plus_1,
                        size: 15,
                        color: Colors.white,
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
                              image: AssetImage('assets/AudioPosts-image2.png'),
                            ),
                            SizedBox(
                              width: 40,
                            ),
                            Text(
                              'Audio\nPosts',
                              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        CreateContainer(
                            'Inauguration Speech of Gov. Diri \nduring the swearing-in ceremony at \nthe Samson Siasia Sports Complex'),
                        SizedBox(
                          height: 15,
                        ),
                        CreateContainer(
                            "Transparency Briefing on the FAAC \nAllocation for the month of January at \nthe Governor's Conference Hall"),
                        SizedBox(
                          height: 15,
                        ),
                        CreateContainer(
                            'Gov. Douye Diri on a thanksgiving \nspeach at the Government House \nChapel'),
                        SizedBox(
                          height: 15,
                        ),
                        CreateContainer(
                            'Gov. Douye Diri on a thanksgiving \nspeach at the Government House \nChapel'),
                        SizedBox(
                          height: 15,
                        ),
                        CreateContainer(
                            'Gov. Douye Diri on a thanksgiving \nspeach at the Government House \nChapel'),
                      ],
                    ),
                  ),
                  SizedBox(height: 15,),
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
                      style: TextStyle(color: Colors.white, fontSize: 16,fontWeight: FontWeight.bold),
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

  Widget CreateContainer(String text) {
    return Container(
      width: double.infinity,
      height: 100,
      padding: EdgeInsets.symmetric(horizontal: 8),
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: kLightPurple,
        borderRadius: BorderRadius.circular(70),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: kLightred,
            radius: 45,
            child: Center(
              child: Image(
                image: AssetImage('assets/Audio Posts-image3.png'),
                width: 40,
                height: 40,
              ),
            ),
          ),
          SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
