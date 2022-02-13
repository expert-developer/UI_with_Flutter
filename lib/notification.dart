import 'package:flutter/material.dart';

import 'constant.dart';
class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: kDarkPurple,
      appBar: AppBar(
        backgroundColor: kDarkBlue.withOpacity(0.3),
        elevation: 0.0,
        leading: const BackButton(),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 12),
            child: InkWell(
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
                        height: 10,
                      ),
                      Container(
                        height: 100,
                        margin: EdgeInsets.only(right: 10,left: 10,top: 0),
                        color: kLightPurple,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            SizedBox(width: 20,),
                            Image(
                              width: 50,
                              height: 50,
                              image: AssetImage('assets/notification.png'),
                            ),
                            SizedBox(
                              width: 30,
                            ),
                            Text(
                              'Notification',
                              style: TextStyle(
                                  fontSize: 25, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      CreateContainer(kLightred, 'Education Investment, A \nPriority Of My Administration, \nSays Gov. Diri ', '06', 'January', '2022'),
                      CreateContainer(kLightred, 'NLNG Donates 150,000 \nMedical Equipment To Bayelsa ', '06', 'January', '2022'),
                      CreateContainer(kLightred, "Why I Didn't Interfere in IYC \nElection - Gov. Diri", '06', 'January', '2022'),
                      CreateContainer(kLightPurple, "We Won't Cut Bayelsa \nWorkers Pay, Gov. Diri Assures", '06', 'January', '2022'),
                      CreateContainer(kLightPurple, "NLNG Donates 150,000 \nMedical Equipment To Bayelsa", '06', 'January', '2022'),
                      CreateContainer(kLightPurple, "We Won't Cut Bayelsa \nWorkers Pay, Gov. Diri Assures", '06', 'January', '2022'),

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
  Widget CreateContainer (Color color,String text ,String text1,String text2,String text3){
    return Container(
      height: 100,
      color: color,
      padding: EdgeInsets.symmetric(horizontal: 30,vertical: 25),
      margin: EdgeInsets.only(left: 10,right: 10,top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
          Spacer(),
          Column(
            children: [
              Text(text1,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
              Text(text2,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
              Text(text3,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
            ],
          ),
        ],
      ),
    );
  }
}
