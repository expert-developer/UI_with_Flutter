import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';

import 'constant.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverList(
              delegate: SliverChildListDelegate(
                [

                ],
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  width: double.infinity,
                  height: 50,
                  color: Colors.blueAccent,
                  child: const Center(
                    child: Text(
                      'Footer',
                      style: TextStyle(color: Colors.white, letterSpacing: 4),
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
