import 'package:flutter/material.dart';
import 'package:flutter_project2/newscontent.dart';

import 'constant.dart';

class Prosperitypost extends StatelessWidget {
  const Prosperitypost({Key? key}) : super(key: key);

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
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Image(
                            image: AssetImage(
                                'assets/Bayelsa State An Overview - 4-image3.png'),
                            width: 100,
                            height: 100,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'The Prosperity \nPost',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        color: kLightPurple,
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.65,
                        child: Column(
                          children: [
                            Container(
                              margin: const EdgeInsets.only(
                                  left: 120, right: 20, top: 35, bottom: 35),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'Articles',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  LinearProgressIndicator(
                                    minHeight: 5,
                                    color: Colors.blue,
                                    value: 0.5,
                                  ),
                                ],
                              ),
                            ),
                            CreateContainer(
                                'We will complete key inherited\nprojects - Gov. Douye Diri',
                                '12 Jan 2020',
                                context),
                            CreateContainer(
                                'Gov. Diri unveils made in Bayelsa\nrice - targets commercial export',
                                '8 jan 2020',
                                context),
                            CreateContainer(
                                'Commitment to Security:\nOperation Doo-Akpo back to life',
                                '2 Jan 2020',
                                context),
                          ],
                        ),
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

  Widget CreateContainer(String text, String date, context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return NewsContent();
            },
          ),
        );
      },
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 35, right: 35),
                  child: const Image(
                    width: 50,
                    height: 50,
                    image: const AssetImage(
                        'assets/Bayelsa State An Overview - 4-image.png'),
                  ),
                ),
                Text(
                  text,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 120,
                ),
                Text(
                  date,
                  style: const TextStyle(color: Colors.grey, fontSize: 10),
                ),
                const Spacer(),
                const Text(
                  'Comments',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  width: 10,
                ),
                const CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 10,
                  child: Text(
                    '5',
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
              ],
            ),
            const Divider(
              thickness: 1,
              height: 20,
              color: Colors.white,
              indent: 120,
              endIndent: 20,
            ),
          ],
        ),
      ),
    );
  }
}
