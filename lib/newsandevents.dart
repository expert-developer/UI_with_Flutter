import 'package:flutter/material.dart';

import 'constant.dart';

class NewsAndEvents extends StatelessWidget {
  const NewsAndEvents({Key? key}) : super(key: key);

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
                        const SizedBox(
                          height: 60,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Image(
                              width: 90,
                              height: 90,
                              image: AssetImage(
                                  'assets/News and Events-image5.png'),
                            ),
                            const SizedBox(
                              width: 40,
                            ),
                            const Text(
                              'News &\nEvents',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20,
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
              Text(
                text1,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
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
            width: 150,
            height: 110,
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
