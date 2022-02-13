import 'package:flutter/material.dart';
import 'package:flutter_project2/constant.dart';

class NewsContent extends StatelessWidget {
  const NewsContent({Key? key}) : super(key: key);

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
                  Stack(
                    children: [
                      Column(
                        children: [
                          Stack(
                            children: [
                              const Image(
                                  image: const AssetImage('assets/Event3.jpg')),
                              Positioned(
                                bottom: 0,
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 30),
                                  width: MediaQuery.of(context).size.width,
                                  height: 120,
                                  color: kLightPurple,
                                  child: const Text(
                                    'We will complete key inherited \nprojects - Gov. Douye Diri',
                                    style: TextStyle(
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                    left: 35, right: 35, top: 20),
                                child: const Image(
                                  width: 50,
                                  height: 50,
                                  image: AssetImage(
                                      'assets/Bayelsa State An Overview - 4-image.png'),
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 18),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 10),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 4, color: Colors.white)),
                                child: const Text(
                                  'POST A COMMENT',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(left: 35, right: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  '08 May 2021, 08:21 AM',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 10),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Officials with President Joe Biden's coronavirus task force say 110 million Americans will be fully vaccinated by the end of Friday, with a total of 150 million vaccinated through the first shot. 'We are far ahead of where anyone thought we would be in our war against the virus,' said Jeffrey Zients, the White House coronavirus task force director.\nSigned:",
                                  style: TextStyle(letterSpacing: 0.5),
                                ),
                                Text(
                                  'J.P. Owoupele',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
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
}
